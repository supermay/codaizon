require 'rails_helper'

RSpec.describe Cart, type: :model do
  describe "Should have associations with orders and products through orders"  do
    it { should have_many(:orders)}
    it { should have_many(:products).through(:orders) }
  end
end
