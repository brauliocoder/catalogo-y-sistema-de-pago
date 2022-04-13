class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @order = current_order
  end

  def update
    product = params[:cart][:product_id]

    current_order.add_to_cart(product)
  end

  def payment_sim
    payment_method_id = params[:cart][:payment_method_id]
    current_order.pay_with_method(payment_method_id)

    redirect_to root_url, notice: "Payment successful"
  end
end
