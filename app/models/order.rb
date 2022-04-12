class Order < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :products

  has_many :payment_methods
  has_many :payment, through: :payment_methods
end
