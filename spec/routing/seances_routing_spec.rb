require "rails_helper"

RSpec.describe SeancesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/seances").to route_to("seances#index")
    end

    it "routes to #new" do
      expect(:get => "/seances/new").to route_to("seances#new")
    end

    it "routes to #show" do
      expect(:get => "/seances/1").to route_to("seances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/seances/1/edit").to route_to("seances#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/seances").to route_to("seances#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/seances/1").to route_to("seances#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/seances/1").to route_to("seances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/seances/1").to route_to("seances#destroy", :id => "1")
    end

  end
end
