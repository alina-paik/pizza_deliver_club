class CreateOrdersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :phone_number, null: false, default: ''
      t.string :address, null: false, default: ''
      t.string :pay_method, null: false, default: ''
      t.timestamps null: false
    end
  end
end
