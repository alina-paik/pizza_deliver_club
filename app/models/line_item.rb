class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  
  validates :product_id, :cart_id, :order_id, presence: true
  validates :quantity, presence: true,
                       length: { minimum: 1 }
end
