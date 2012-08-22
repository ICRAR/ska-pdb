require "spec_helper"

describe ParametersController do
  describe "routing" do

    it "routes to #export" do
      get("/export").should route_to("parameters#export")
    end

  end
end
