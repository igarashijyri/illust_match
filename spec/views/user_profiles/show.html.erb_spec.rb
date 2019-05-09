require 'rails_helper'

RSpec.describe "user_profiles/show", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      :user => nil,
      :name => "",
      :null => "",
      :gender => "Gender",
      :age => "Age",
      :language => "Language",
      :db => "Db",
      :fw => "Fw",
      :tools => "Tools",
      :server => "Server",
      :developer_experience => "",
      :default => "",
      :operater_experience => "",
      :default => "",
      :tester_experience => "",
      :false => "False",
      :basic_design_experience => "",
      :default => "",
      :details_design_experience => "",
      :default => "",
      :test_design_experience => "",
      :default => "",
      :appeal_text => "Appeal Text",
      :qualification => "Qualification"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Age/)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/Db/)
    expect(rendered).to match(/Fw/)
    expect(rendered).to match(/Tools/)
    expect(rendered).to match(/Server/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/False/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Appeal Text/)
    expect(rendered).to match(/Qualification/)
  end
end
