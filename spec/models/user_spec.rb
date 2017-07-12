require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Should have associations with cart and profile" do
    it { should have_one(:cart) }
    it { should have_one(:profile) }
  end
end
