require 'spec_helper'

describe ParametersController do
    
  describe "GET index" do
    it "should return all parameters" do
      Parameter.stub(:search).with("test.page", 20) {:some_params}

      get :index, {:page => "test.page"}

      assigns(:parameters).should == :some_params
    end
    
  end

  describe "GET search with pagination" do
    it "should return all parameters when search criteria are empty" do
      SearchFilter.any_instance.stub(:empty?) {true}
      Parameter.stub(:search).with("test.page", "20", instance_of(SearchFilter)) {:some_params}

      get :search, {:source => "", :unit => "", :description => "", :page => "test.page", :page_size => 20}

      assigns(:parameters).should == :some_params
      response.should render_template("index")
    end

    it "should return parameters satisfying valid search criteria" do
      mock_filter = double('SearchFilter')
      SearchFilter.stub(:initialize_from)
                  .with(hash_including({"unit" => "test.unit", "description" => "test.description"}))
                  .and_return(mock_filter)
      Parameter.stub(:search).with("test.page", 20, mock_filter) {:some_params}

      get :search, {:page => "test.page", :unit => "test.unit", :description => "test.description"}

      assigns(:parameters).should == :some_params
      response.should render_template("index")
    end
  end

  [[:xml, 'application/xml'],
   [:pdf, 'application/pdf'],
   [:java, 'text/plain']].each do |type, content_type|
    describe "#{type} export" do
      it "return #{type} data on search" do
        SearchFilter.any_instance.stub(:empty?) {true}

        parameter = double("parameter", :unit => "", :source => "", :expression => "", :description => "")
        Parameter.stub(:search).with("test.page", 20, instance_of(SearchFilter)) {[parameter]}

        get :search, {:format => type, :source => "", :unit => "", :description => "", :page => "test.page"}

        response.header["Content-Type"].should include(content_type)
      end

      it "return #{type} data on index" do
        get :index, {:format => type}

        response.header["Content-Type"].should include(content_type)
      end
    end
  end
end
