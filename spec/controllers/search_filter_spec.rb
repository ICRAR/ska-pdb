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

  describe "construct base search" do
    it "should return correct search sql" do
      sf = SearchFilter.initialize_from({"text" => ''})

      sf.construct_base_search(['description', 'source']).should == "(lower(description) LIKE lower(?) OR lower(source) LIKE lower(?))"
    end
  end

  describe "initialize from valid parameters" do
    it "should not be empty when at least one parameter matches one of the search criteria" do
      SearchFilter.initialize_from({"text" => "123", "some_param" => "test.unit"}).should_not be_empty
    end

    it "should return an empty query if no search string is supplied" do
      sc = SearchFilter.initialize_from({"text" => ''})

      sc.build_query.should == ParameterDetail.where('')
    end

    it "should return an empty query if just spaces are supplied as search string" do
      sc = SearchFilter.initialize_from({"text" => '   '})

      sc.build_query.should == ParameterDetail.where('')
    end

    it "should build a query from one search text word" do
      sc = SearchFilter.initialize_from({"text" => "matrix"})

      sql = sc.build_query.to_sql
      sql.should == "SELECT \"parameters\".* FROM \"parameters\"  WHERE ((lower(description) LIKE lower('%matrix%') OR lower(source) LIKE lower('%matrix%') OR lower(unit) LIKE lower('%matrix%')))"
    end
  end
end
