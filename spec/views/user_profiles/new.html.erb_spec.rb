require 'rails_helper'

RSpec.describe "user_profiles/new", type: :view do
  before(:each) do
    assign(:user_profile, UserProfile.new(
      :user => nil,
      :name => "",
      :null => "",
      :gender => "MyString",
      :age => "MyString",
      :language => "MyString",
      :db => "MyString",
      :fw => "MyString",
      :tools => "MyString",
      :server => "MyString",
      :developer_experience => "",
      :default => "",
      :operater_experience => "",
      :default => "",
      :tester_experience => "",
      :false => "MyString",
      :basic_design_experience => "",
      :default => "",
      :details_design_experience => "",
      :default => "",
      :test_design_experience => "",
      :default => "",
      :appeal_text => "MyString",
      :qualification => "MyString"
    ))
  end

  it "renders new user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profiles_path, "post" do

      assert_select "input[name=?]", "user_profile[user_id]"

      assert_select "input[name=?]", "user_profile[name]"

      assert_select "input[name=?]", "user_profile[null]"

      assert_select "input[name=?]", "user_profile[gender]"

      assert_select "input[name=?]", "user_profile[age]"

      assert_select "input[name=?]", "user_profile[language]"

      assert_select "input[name=?]", "user_profile[db]"

      assert_select "input[name=?]", "user_profile[fw]"

      assert_select "input[name=?]", "user_profile[tools]"

      assert_select "input[name=?]", "user_profile[server]"

      assert_select "input[name=?]", "user_profile[developer_experience]"

      assert_select "input[name=?]", "user_profile[default]"

      assert_select "input[name=?]", "user_profile[operater_experience]"

      assert_select "input[name=?]", "user_profile[default]"

      assert_select "input[name=?]", "user_profile[tester_experience]"

      assert_select "input[name=?]", "user_profile[false]"

      assert_select "input[name=?]", "user_profile[basic_design_experience]"

      assert_select "input[name=?]", "user_profile[default]"

      assert_select "input[name=?]", "user_profile[details_design_experience]"

      assert_select "input[name=?]", "user_profile[default]"

      assert_select "input[name=?]", "user_profile[test_design_experience]"

      assert_select "input[name=?]", "user_profile[default]"

      assert_select "input[name=?]", "user_profile[appeal_text]"

      assert_select "input[name=?]", "user_profile[qualification]"
    end
  end
end
