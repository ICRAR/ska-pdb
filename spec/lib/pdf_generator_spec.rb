require "spec_helper"
require "pdf_generator"

describe "PdfGenerator" do
  let(:generator) { PdfGenerator.new }
  let(:parameter_detail) { mock_model(ParameterDetail, :unit => "a", :source => "b", :expression => "c", :description => "d") }
  let(:parameter_detail2) { mock_model(ParameterDetail, :unit => "e", :source => "f", :expression => "g", :description => "h") }
  let(:parameter) { mock_model(Parameter, :parameter_detail => parameter_detail) }
  let(:parameter2) { mock_model(Parameter, :parameter_detail => parameter_detail2) }

  it "returns a string representation of a pdf" do
    generator.create_pdf([parameter]).start_with?("%PDF").should == true
  end

  it "returns data as array with a header" do
    generator.collect_data_into_array([parameter]).should == [["Unit", "Source", "Expression", "Description"], ["a", "b", "c", "d"]]
  end

  it "returns data for all the parameters provided" do
    generator.collect_data_into_array([parameter, parameter2]).should == [["Unit", "Source", "Expression", "Description"], ["a", "b", "c", "d"], ["e", "f", "g", "h"]]
  end

  it "returns just the header when no parameters provided" do
    generator.collect_data_into_array([]).should == [["Unit", "Source", "Expression", "Description"]]
  end
end