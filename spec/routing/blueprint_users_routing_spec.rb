require "spec_helper"

describe BlueprintUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/blueprint_users").should route_to("blueprint_users#index")
    end

    it "routes to #new" do
      get("/blueprint_users/new").should route_to("blueprint_users#new")
    end

    it "routes to #show" do
      get("/blueprint_users/1").should route_to("blueprint_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blueprint_users/1/edit").should route_to("blueprint_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blueprint_users").should route_to("blueprint_users#create")
    end

    it "routes to #update" do
      put("/blueprint_users/1").should route_to("blueprint_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blueprint_users/1").should route_to("blueprint_users#destroy", :id => "1")
    end

  end
end
