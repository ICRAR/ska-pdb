require 'spec_helper'

describe ParametersController do
  before(:each) do
    controller.stub(:user_signed_in?).and_return true
  end

  describe "GET index" do
    describe "instance variables" do
      let(:search_text) { nil }
      let(:params) { {:text => search_text} }
      before { get :index, params }

      it { assigns(:cart).should be_true }
      it { assigns(:search).should be_false }
      it { assigns(:search_text).should be_false }
      it { assigns(:search_terms).should be_false }

      describe "when searching" do
        let(:search_text) { "some text" }

        it { assigns(:search).should be_true }
        it { assigns(:search_text).should == "some text" }
        it { assigns(:search_terms).should == ["some", "text"] }
      end
    end

    describe "html format" do
      it "should render index template" do
        get :index

        response.should render_template('parameters/index')
      end
    end

    describe "json format" do
      it "should create a parameters query helper" do
        expected_hash = {
          :user_signed_in => true,
          :page_size => 20,
          :search => nil,
          :search_text => nil,
          :search_terms => nil }
        ParametersDatatable.should_receive(:new).with(anything, expected_hash)

        get :index, :format => :json
      end

      it "should return json results of the query"

      context "when searching" do
        it "should create a parameters query helper with search parameters" do
          expected_hash = {
            :user_signed_in => true,
            :page_size => 20,
            :search => true,
            :search_text => "some text",
            :search_terms => ["some", "text"] }
          ParametersDatatable.should_receive(:new).with(anything, expected_hash)

          get :index, { :text => "some text", :format => :json }
        end
      end
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

        response.status.should == 200
        response.header["Content-Type"].should include(content_type)
      end

      it "return #{type} data on index" do
        get :export, {:format => type}

        response.status.should == 200
        response.header["Content-Type"].should include(content_type)
      end
    end
  end
end
