require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Association with buyers through carts"  do

    let!(:buyer_user) { create :user, email: "chuday@gmail.com" }
    let!(:product) { create :product, cart: cart  }
    let!(:cart) { create :cart }

    it "has buyers" do
      expect(:cart.user).to include(buyer_user)
    end
  end
end
