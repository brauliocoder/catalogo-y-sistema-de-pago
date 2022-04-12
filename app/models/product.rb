class Product < ApplicationRecord
  has_many_attached :images

  has_one :category
  has_and_belongs_to_many :orders
end
