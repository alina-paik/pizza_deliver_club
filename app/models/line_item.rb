class LineItem < ApplicationRecord

  validates :product_id, :cart_id, :order_id, presence: true
  validates :quantity, presence: true,
                       length: { minimum: 1 }
end
