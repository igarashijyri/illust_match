require 'rails_helper'

RSpec.describe "NovelProducts", type: :request do
  describe "GET /novel_products" do
    it "works! (now write some real specs)" do
      get novel_products_path
      expect(response).to have_http_status(200)
    end
  end
end
