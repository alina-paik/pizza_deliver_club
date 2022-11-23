class CreateLineItemsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.references :product, foreign_key: true, null: true
      t.references :cart, foreign_key: true, null: true
      t.references :order, foreign_key: true, null: true
      t.integer :quantity, null: false, default: 1
      t.timestamps null: false
    end
  end
end
