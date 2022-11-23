class CreateProductsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false, default: ''
      t.string :description, null: false, default: ''
      t.string :title_image
      t.integer :price, null: false, default: 0
      t.timestamps null: false
    end
  end
end
