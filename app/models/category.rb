class Category < ApplicationRecord
  validates_uniqueness_of :name

  has_many :products
end
