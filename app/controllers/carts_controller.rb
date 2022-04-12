class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @order = current_order
  end

  def update
    product = params[:cart][:product_id]

    current_order.add_to_cart(product)
  end
end
