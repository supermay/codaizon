require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Should have associations with orders and cart through orders"  do
    it { should have_many(:orders)}
    it { should have_many(:carts).through(:orders) }
  end
end
