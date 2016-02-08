class OrdersController < ApplicationController

        before_action :find_order, only: [:show, :edit, :update, :destroy]

        def index
        end

        def show
        end

        def new
            @order = Order.new
        end

        def create
            @order = Order.new(order_params)
            if @order.save
                redirect_to @order
            else
                render 'new'
            end
        end

        def edit
        end

        def update
        end

        def destroy
        end

    private

        def order_params
            params.require(:order).permit(:date, :name, :pickup, :pickuptime)
        end

        def find_order
            @order = Order.find(params[:id])
        end
end
