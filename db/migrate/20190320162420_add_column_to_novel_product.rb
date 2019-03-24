class AddColumnToNovelProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :novel_products, :user_id, :integer
  end
end
