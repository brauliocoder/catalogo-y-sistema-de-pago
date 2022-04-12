class Order < ApplicationRecord
  belongs_to :user
  
  has_many :product_orders
  has_many :products, through: :product_orders

  has_many :payment_methods
  has_many :payment, through: :payment_methods

  def add_to_cart(product_id)
    product = Product.find(product_id)

    if not product.nil? && product.stock > 0
      product_orders.create(product_id: product_id, quantity: 1)
    end
    
  end
  
  def not_empty?
    if self.product_orders.count > 0
      true
    end
    
    false
  end
end
