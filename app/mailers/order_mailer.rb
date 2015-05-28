class OrderMailer < ActionMailer::Base
  default to: "storedom-overlord@example.com"
  default from: "miriam@example.com"

  def order_confirmation(order)
  	@order = Order.find(order.order_id)
  	@item = Item.find(order.item_id)
  	mail(to: "storedom-overlord@example.com", subject: "You made some money")
  end
end
