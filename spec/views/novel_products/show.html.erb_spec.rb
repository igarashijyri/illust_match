require 'rails_helper'

RSpec.describe "novel_products/show", type: :view do
  before(:each) do
    @novel_product = assign(:novel_product, NovelProduct.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
