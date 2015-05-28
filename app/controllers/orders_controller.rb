class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
  	order = Order.create(user_id: 1, amount: 1)
  	new_order = OrderItem.new(order_id: order.id, item_id: params[:item_id])
	
		if new_order.save
			OrderMailer.order_confirmation(new_order).deliver
	  	flash[:alert] = "You have successfully ordered this item!"
	  	redirect_to order_path(order)
	  else
	  	flash[:alert] = "Something went wrong"
	  	redirect_to :back
	  end
  end
end