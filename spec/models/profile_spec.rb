require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "Should have association with user + destroy dependency" do
    it { should belong_to(:user).dependent(:destroy) }
  end
end
