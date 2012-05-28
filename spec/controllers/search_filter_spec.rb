require 'spec_helper'

describe "SearchFilter" do
  describe "initialize as empty" do
    it "should be empty if created with no parameters" do
      SearchFilter.new.should be_empty
    end

    it "should be empty when no parameters match the search criteria" do
      SearchFilter.initialize_from({"some_param" => "123"}).should be_empty
    end
  end

  describe "initialize from valid parameters" do
    it "should not be empty when at least one parameter matches one of the search criteria" do
      SearchFilter.initialize_from({"text" => "123", "some_param" => "test.unit"}).should_not be_empty
    end

    it "should return an empty query if no search string is supplied" do
      sc = SearchFilter.initialize_from({"text" => ''})

      where, params = sc.build_query
      where.should be == ""
      params.should == []
    end

    it "should return an empty query if just spaces are supplied as search string" do
      sc = SearchFilter.initialize_from({"text" => '   '})

      where, params = sc.build_query
      where.should be == ""
      params.should == []
    end

    it "should build a query from one search text word" do
      sc = SearchFilter.initialize_from({"text" => "matrix"})

      where, params = sc.build_query
      where.should be == "(description LIKE ? OR source LIKE ?)"
      params.should == ["%matrix%", "%matrix%"]
    end

    it "should build a query from multiple search words respecting quotes" do
      sc = SearchFilter.initialize_from({"text" => 'matrix "light speed"'})

      where, params = sc.build_query
      where.should be == "(description LIKE ? OR source LIKE ?) AND (description LIKE ? OR source LIKE ?)"
      params.should == ["%matrix%", "%matrix%", "%light speed%", "%light speed%"]
    end
  end
end
