class DeliveriesController < ApplicationController
    def create
      @order = Order.find(params[:order_id])  #find the order the delivery is associated with in the controller
      @deilvery = @order.deiliveries.create(params[:order].permit(:name, :deliveryaddress, :deliverytime, :notes))
      redirect_to order_path(@order)
    end
end
