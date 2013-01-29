require "spec_helper"

describe "Value approximation" do
  let(:named_object) { mock(:name => 'name') }

  let(:scalar_parameter_detail) { ParameterDetail.new(
                                      :value => 17,
                                      :basic => true,
                                      :scalar => true,
  )}
  let(:scalar_parameter) { Parameter.new :name => 'scalar', :parameter_detail => scalar_parameter_detail}

  let(:simple_nonscalar_parameter_detail) { ParameterDetail.new(
                                      :basic => false,
                                      :scalar => true,
                                      :expression => '3 * 4',
  )}
  let(:simple_nonbasic_parameter) { Parameter.new :name => 'non-basic simple', :parameter_detail => simple_nonscalar_parameter_detail }

  it "should return expected value if scalar" do
    scalar_parameter.value.should == 17
  end

  it "should calculate simple expression if not scalar" do
    simple_nonbasic_parameter.value.should == 12
  end

end
