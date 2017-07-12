require 'rails_helper'

RSpec.describe Order, type: :model do
  describe "Should have associations with cart and product + destroy dependency" do
    it { should belong_to(:cart).dependent(:destroy) }
    it { should belong_to(:product).dependent(:destroy) }
  end
end
