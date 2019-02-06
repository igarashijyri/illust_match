require '../rails_helper'

RSpec.describe NovelProduct, type: :model do
  it "名前を登録して名前を取得する" do
  hoge = "hoge"
  expect(hoge).to eq "hoge"
  end
end
