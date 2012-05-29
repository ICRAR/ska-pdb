require 'spec_helper'

describe "Parameter" do
  before(:each) do
    @total_parameters = 36
    @max_results_per_page = 20
    Parameter.delete_all
    @total_parameters.times do |index|
      Parameter.create(description: "description #{index}", source: "source #{index}")
    end
  end
        
  describe "Using an empty search filter with a page size greater than the number of paramaters" do
    it "should return all of the parameters", :integration => true do
      results = Parameter.search 1, 50
      results.size.should == @total_parameters
    end
  end
    
  describe "Using a valid search filter" do
    it "should return results filtered by text", :integration=>true do
      results  = Parameter.search 1, 20, SearchFilter.initialize_from({"text" => "description 1"})
      results.size.should == 13
    end
  end
    
  describe "Using pagination" do
    it "should return the max number of results in a page", :integration=>true do
      results = Parameter.search 2, 20
      results.size.should == @max_results_per_page
    end

    it "should return results filtered in a page", :integration=>true do
      results = Parameter.search 1, 20, SearchFilter.initialize_from({"text" => "1"})
      results.size.should == 13
    end
  end
end