require 'rails_helper'

RSpec.describe "novel_products/edit", type: :view do
  before(:each) do
    @novel_product = assign(:novel_product, NovelProduct.create!())
  end

  it "renders the edit novel_product form" do
    render

    assert_select "form[action=?][method=?]", novel_product_path(@novel_product), "post" do
    end
  end
end
