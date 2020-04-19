class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image
      t.string :url
      t.string :category

      t.timestamps
    end
  end
end
