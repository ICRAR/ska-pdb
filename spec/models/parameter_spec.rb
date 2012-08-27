require 'spec_helper'

describe "Parameter" do
  before(:each) do
    @total_parameters = 36
    @max_results_per_page = 20
    ParameterDetail.delete_all
    @total_parameters.times do |index|
      ParameterDetail.create(description: "description #{index}", source: "source #{index}", unit: "", protected: false)
    end
  end
        
  describe "Using an empty search filter with a page size greater than the number of paramaters" do
    it "should return all of the parameters", :integration => true do
      results = ParameterDetail.search 1, 50, SearchFilter.new, false
      results.size.should == @total_parameters
    end
  end
    
  describe "Using a valid search filter" do
    it "should return results filtered by text", :integration=>true do
      results = ParameterDetail.search 1, 20, SearchFilter.initialize_from({"text" => "description 1"}), false

      results.size.should == 13
    end
  end
    
  describe "Using pagination" do
    it "should return the max number of results in a page", :integration=>true do
      results = ParameterDetail.search 2, 20, SearchFilter.new, false
      results.size.should == @max_results_per_page
    end

    it "should return results filtered in a page", :integration=>true do
      results = ParameterDetail.search 1, 20, SearchFilter.initialize_from({"text" => "1"}), false
      results.size.should == 13
    end
  end
end