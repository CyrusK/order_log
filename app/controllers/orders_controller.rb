class OrdersController < ApplicationController

        def index
        end

        def show
        end

        def new
            @order = Order.new
        end

        def create
            @order = order.new(order_params)
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
        end

        def find_order
        end
end
