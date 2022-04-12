class ApplicationController < ActionController::Base
  def current_order
    if current_user
      order = current_user.orders.where(status: "created").last
      if order.nil?
        order = Order.create(user: current_user, status: "created")
      end

      return order
    end

    nil
  end
  
end
