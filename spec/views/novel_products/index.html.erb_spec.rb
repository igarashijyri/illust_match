require 'rails_helper'

RSpec.describe "novel_products/index", type: :view do
  before(:each) do
    assign(:novel_products, [
      NovelProduct.create!(),
      NovelProduct.create!()
    ])
  end

  it "renders a list of novel_products" do
    render
  end
end
