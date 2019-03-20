require 'rails_helper'

RSpec.describe "novel_products/new", type: :view do
  before(:each) do
    assign(:novel_product, NovelProduct.new())
  end

  it "renders new novel_product form" do
    render

    assert_select "form[action=?][method=?]", novel_products_path, "post" do
    end
  end
end
