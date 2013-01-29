require "spec_helper"

describe "Math parsing" do

  let(:x_detail) {ParameterDetail.new expression: "1 - %Nature:Pi_Constant%", basic: false, scalar: true}
  let(:y_detail) {ParameterDetail.new expression: "%x% * (2+%z%)", basic: false, scalar: true}
  let(:z_detail) {ParameterDetail.new value: 8, basic: true, scalar: true}

  let(:x_parameter) {Parameter.new name: "x", parameter_detail: x_detail}
  let(:y_parameter) {Parameter.new name: "y", parameter_detail: y_detail}
  let(:z_parameter) {Parameter.new name: "z", parameter_detail: z_detail}

  let(:pi_detail) { ParameterDetail.new(
      :value => 3.14159265,
      :value_s => "three point one four one five nine two six five",
      :basic => true,
      :scalar => true
  )}

  let(:pi_constant) { Parameter.new :name => 'Nature:Pi_Constant', :parameter_detail => pi_detail }

  it "should parse very simple expressions" do
    parser = MathHelper::Parser.new
    parser.parse("3").should == 3
  end

  it "should parse simple expressions" do
    parser = MathHelper::Parser.new
    parser.parse("3  *4").should == 12
  end

  it "should parse somewhat more complicated expressions" do
    parser = MathHelper::Parser.new
    parser.parse("234/4+234-2234+324*21312+321-(8123+123*667/123123)").should be_within(0.0001).of(6895343.83367)
  end

  it "should handle parameters in trivial expressions" do
    Parameter.should_receive(:find_by_name).with("Nature:Pi_Constant").and_return(pi_constant)
    parser = MathHelper::Parser.new
    parser.parse("%Nature:Pi_Constant%").should be_within(0.01).of(3.14)
  end

  it "should handle parameters in simple expressions" do
    Parameter.should_receive(:find_by_name).with("Nature:Pi_Constant").and_return(pi_constant)
    parser = MathHelper::Parser.new
    parser.parse("7*(1 + %Nature:Pi_Constant%)").should be_within(0.00001).of(28.991149)
  end

  it "should handle non-basic parameters in simple expressions" do

    Parameter.should_receive(:find_by_name).with(x_parameter.name).and_return(x_parameter)
    Parameter.should_receive(:find_by_name).with(y_parameter.name).and_return(y_parameter)
    Parameter.should_receive(:find_by_name).with(z_parameter.name).and_return(z_parameter)
    Parameter.should_receive(:find_by_name).with(pi_constant.name).and_return(pi_constant)

    parser = MathHelper::Parser.new
    parser.parse("5 * %y% + 110").should be_within(0.000001).of(2.920367)
  end


end