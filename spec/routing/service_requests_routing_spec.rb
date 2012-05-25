require "spec_helper"

describe ServiceRequestsController do
  describe "routing" do

    it "routes to #index" do
      get("/service_requests").should route_to("service_requests#index")
    end

    it "routes to #new" do
      get("/service_requests/new").should route_to("service_requests#new")
    end

    it "routes to #show" do
      get("/service_requests/1").should route_to("service_requests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/service_requests/1/edit").should route_to("service_requests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/service_requests").should route_to("service_requests#create")
    end

    it "routes to #update" do
      put("/service_requests/1").should route_to("service_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/service_requests/1").should route_to("service_requests#destroy", :id => "1")
    end

  end
end
