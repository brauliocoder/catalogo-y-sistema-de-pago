class Product < ApplicationRecord
  has_many_attached :images

  belongs_to :category
  
  has_many :product_orders
  has_many :orders, through: :product_orders

  scope :with_stock, -> { where('stock > ?', 0)}

  def has_an_image?
    self.images.exists?
  end
end
