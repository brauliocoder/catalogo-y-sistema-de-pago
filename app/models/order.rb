class Order < ApplicationRecord
  belongs_to :user
  
  has_many :product_orders
  has_many :products, through: :product_orders

  has_many :payments

  def add_to_cart(product_id)
    product = Product.find(product_id)

    if not product.nil? && product.stock > 0
      product_orders.create(product_id: product_id, quantity: 1, price: product.price)
    end
    
  end

  def pay_with_method(pm_id)
    payments.create(payment_method_id: pm_id)
    
    self.status = "finished"
    self.save
  end
  
  def empty?
    order_count = product_orders.count

    if order_count > 0
      return false
    else
      return true
    end
  end
end
