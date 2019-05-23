class AddImageToUserProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :user_profiles, :image, :integer
  end
end
