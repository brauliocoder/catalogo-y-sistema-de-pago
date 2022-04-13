class Product < ApplicationRecord
  validates_presence_of :name, :description, :stock, :category_id
  validates_numericality_of [:stock, :price], greater_than_or_equal_to: 0, message: "must be 0 or greater"
  validate :digital_length

  has_many_attached :images

  belongs_to :category
  
  has_many :product_orders
  has_many :orders, through: :product_orders

  scope :with_stock, -> { where('stock > ?', 0)}

  def has_an_image?
    self.images.exists?
  end

  def purge_image (img_id)
    img = images.find(img_id)
    img.purge
  end

  def digital_length
    if images.length > 1 && category.name == "digital"
      images.purge
      errors.add(:images, "must be one picture if category is digital")
    end
  end
end
