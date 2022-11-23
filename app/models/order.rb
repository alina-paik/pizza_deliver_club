class Order < ApplicationRecord

  validates :name, presence: true,
                   length: { maximum: 50 }
  validates :email, presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_number, presence: true,
                           numericality: true,
                           length: { in: 10..15 },
                           format: { with: /\d[0-9]\)*/, message: 'only positive number without spaces are allowed' }
  validates :address, presence: true,
                      length: { maximum: 100 }
  validates :pay_method, presence: true,
                         inclusion: { in: %w(cash bank_card) }
end
