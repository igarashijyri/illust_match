require 'rails_helper'

RSpec.describe "user_profiles/index", type: :view do
  before(:each) do
    assign(:user_profiles, [
      UserProfile.create!(
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
      ),
      UserProfile.create!(
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
      )
    ])
  end

  it "renders a list of user_profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Age".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "Db".to_s, :count => 2
    assert_select "tr>td", :text => "Fw".to_s, :count => 2
    assert_select "tr>td", :text => "Tools".to_s, :count => 2
    assert_select "tr>td", :text => "Server".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "False".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Appeal Text".to_s, :count => 2
    assert_select "tr>td", :text => "Qualification".to_s, :count => 2
  end
end
