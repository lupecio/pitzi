class OrdersController < ApplicationController

    def index
        @orders = Order.all.where(user_id: params[:user_id]).as_json(:include => :user)

        render json: @orders
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
        params.require(:order).permit(:model, :imei, :price, :payment_installments)
    end
end
