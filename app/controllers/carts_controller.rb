class CartsController < ApplicationController

  before_action :authenticate_user!

  def create
    @cart = current_user.carts.create(cart_params)
  end

  private

  def cart_params
    params.require(:cart).permits(:product_id, :total_price)

  end
end
