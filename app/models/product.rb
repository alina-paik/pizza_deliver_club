class Product < ApplicationRecord

  validates :name, presence: true,
                   length: { maximum: 50 }
  validates :description, presence: true,
                   length: { maximum: 500 }
  validates :price, presence: true,
                    numericality: true,
                    length: { in: 1..5 }
  validates :title_image, presence: true 
end
