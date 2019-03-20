require "rails_helper"

RSpec.describe NovelProductsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/novel_products").to route_to("novel_products#index")
    end

    it "routes to #new" do
      expect(:get => "/novel_products/new").to route_to("novel_products#new")
    end

    it "routes to #show" do
      expect(:get => "/novel_products/1").to route_to("novel_products#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/novel_products/1/edit").to route_to("novel_products#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/novel_products").to route_to("novel_products#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/novel_products/1").to route_to("novel_products#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/novel_products/1").to route_to("novel_products#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/novel_products/1").to route_to("novel_products#destroy", :id => "1")
    end
  end
end
