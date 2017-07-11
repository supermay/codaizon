require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Association with carts through orders"  do
   it { should have_many(:carts).through(:orders)}
  end
end
