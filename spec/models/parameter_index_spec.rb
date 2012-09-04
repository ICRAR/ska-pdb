require 'spec_helper'

describe "ParameterIndex" do
  describe "build search text" do
    let(:named_object) { mock(:name => 'name') }
    let(:basic) { true }
    let(:scalar) { true }
    let(:parameter_detail) { mock_model(ParameterDetail,
                                        :scope0 => named_object,
                                        :scope1 => named_object,
                                        :scope2 => named_object,
                                        :scope3 => named_object,
                                        :param_class => named_object,
                                        :kind => named_object,
                                        :direction => named_object,
                                        :case => named_object,
                                        :status => named_object,
                                        :value => 1.234,
                                        :value_s => "value_s",
                                        :basic => basic,
                                        :scalar => scalar,
                                        :unit => 'unit',
                                        :description => 'description',
                                        :source => 'source',
                                        :expression => 'expression',
                                        :notation => 'notation',
                                       )}
    let(:parameter) { mock_model(Parameter,
                                 :name => 'name',
                                 :parameter_detail => parameter_detail
                                )}

    it "should pull out the name and the parameter detail of the parameter" do
      parameter.should_receive(:name)
      parameter.should_receive(:parameter_detail)

      ParameterIndex.build_search_text(parameter)
    end

    it "should read the names from the named objects on the parameter details" do
      [:scope0, :scope1, :scope2, :scope3, :param_class, :kind, :direction, :case, :status].each do |method|
        parameter_detail.should_receive(method)
      end

      named_object.should_receive(:name).exactly(18).times

      ParameterIndex.build_search_text(parameter)
    end

    it "should read properties from the parameter details" do
      [:value, :value_s, :basic, :scalar, :unit, :description, :source, :expression, :notation].each do |method|
        parameter_detail.should_receive(method)
      end

      ParameterIndex.build_search_text(parameter)
    end
  end

  describe "build from parameter" do
    let(:parameter) { mock_model(Parameter) }
    let(:search_text) { "search text" }
    let(:parameter_index) { ParameterIndex.new :id => 98765, :search_text => 'old text' }

    before(:each) do
      ParameterIndex.should_receive(:build_search_text).with(parameter).and_return(search_text)
    end

    it "should call build_search_text" do
      ParameterIndex.build_from_parameter(parameter)
    end

    it "should return a ParameterIndex" do
      parameterIndex = ParameterIndex.build_from_parameter(parameter)
      parameterIndex.class.should == ParameterIndex
    end

    it "should set the parameter and the search text on the ParameterIndex" do
      parameterIndex = ParameterIndex.build_from_parameter(parameter)
      parameterIndex.parameter.should == parameter
      parameterIndex.search_text.should == search_text
    end

    it "should find a previous ParameterIndex for that parameter and create a new one if none exists" do
      ParameterIndex.should_receive(:find_by_parameter_id).and_return(nil)
      ParameterIndex.should_receive(:new)

      ParameterIndex.build_from_parameter(parameter)
    end

    it "should find a previous ParameterIndex for that parameter and update that if one is found" do
      ParameterIndex.should_receive(:find_by_parameter_id).and_return(parameter_index)

      parameterIndex = ParameterIndex.build_from_parameter(parameter)
      parameterIndex.id.should == parameter_index.id
      parameterIndex.search_text.should == search_text
    end
  end
end