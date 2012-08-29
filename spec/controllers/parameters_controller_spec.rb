require 'spec_helper'

describe ParametersController do
  before(:each) do
    controller.stub(:user_signed_in?).and_return true
  end
    
  describe "GET index" do
    it "should return all parameters" do
      Parameter.stub(:paginate).with(:page => "test.page", :per_page => 20) {:some_params}

      get :index, {:page => "test.page"}

      assigns(:parameters).should == :some_params
    end
  end

  [[:xml, 'application/xml'],
   [:pdf, 'application/pdf'],
   [:java, 'text/plain']].each do |type, content_type|
    describe "#{type} export" do
      let(:parameter_detail) { mock_model(ParameterDetail, :unit => "a", :source => "b", :expression => "c", :description => "d") }
      let(:parameter) { mock_model(Parameter, :parameter_detail => parameter_detail) }

      it "return #{type} data on search" do
        Parameter.stub(:paginate).with("test.page", 20) {[parameter]}

        get :export, {:format => type, :page => "test.page"}

        response.header["Content-Type"].should include(content_type)
      end

      it "return #{type} data on index" do
        get :export, {:format => type}

        response.header["Content-Type"].should include(content_type)
      end
    end
  end
end
