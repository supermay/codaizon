require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Association with carts through orders"  do

   let!(:product) { create :product }
   let!(:user) { create :user }
   let!(:cart) { create :cart, user: user}
   let!(:order) { create :order, product: product, cart: cart }

    it "has orders and products" do
      cart1 = user.carts.new()
      expect(cart.orders).to include(product)

    end
  end
end
