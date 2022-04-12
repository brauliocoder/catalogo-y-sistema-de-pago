class PaymentMethod < ApplicationRecord
  has_many :orders
  has_many :payment, through: :orders
end
