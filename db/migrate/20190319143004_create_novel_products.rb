class CreateNovelProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :novel_products do |t|

      t.timestamps
    end
  end
end
