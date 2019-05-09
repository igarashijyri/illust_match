class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false, default: false
      t.string :gender
      t.string :age
      t.string :language
      t.string :db
      t.string :fw
      t.string :tools
      t.string :server
      t.boolean :developer_experience, default: false
      t.boolean :operater_experience, default: false
      t.boolean :tester_experience, default: false
      t.boolean :basic_design_experience, default: false
      t.boolean :details_design_experience, default: false
      t.boolean :test_design_experience, default: false
      t.string :appeal_text
      t.string :qualification

      t.timestamps
    end
  end
end
