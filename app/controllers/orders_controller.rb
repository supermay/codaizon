class OrdersController < ApplicationController
before_action :authenticate_user
before_action :find_cart, only: [:create]

  def create
    @order = Order.create(order_params)
  end

private

  def select_product
    @product = Product.find(params[:product_id])
  end

  def find_cart
    @cart = current_user.cart
  end

  def order_params
     params.require(:order).permit(:product_id,:quantity,:cart_id)
  end

end
