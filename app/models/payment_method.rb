class PaymentMethod < ApplicationRecord
  validates_uniqueness_of :name
  validates_uniqueness_of :code
  
  has_many :payments
end
