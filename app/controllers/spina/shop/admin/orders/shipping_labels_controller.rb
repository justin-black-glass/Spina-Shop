module Spina::Shop
  module Admin
    module Orders
      class ShippingLabelsController < AdminController

        def show
          @order = Order.find(params[:order_id])
        end

        def create
          # Create label and print it or some shit
          @order = Order.find(params[:order_id])
          @order.transition_to! :shipped, user: current_spina_user.name, ip_address: request.remote_ip
          redirect_to [:admin, @order]
        end
      end
    end
  end
end