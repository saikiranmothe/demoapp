require "spec_helper"

describe ServiceUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/service_users").should route_to("service_users#index")
    end

    it "routes to #new" do
      get("/service_users/new").should route_to("service_users#new")
    end

    it "routes to #show" do
      get("/service_users/1").should route_to("service_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/service_users/1/edit").should route_to("service_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/service_users").should route_to("service_users#create")
    end

    it "routes to #update" do
      put("/service_users/1").should route_to("service_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/service_users/1").should route_to("service_users#destroy", :id => "1")
    end

  end
end
