FactoryGirl.define do
  factory :order do
    cart          { build(:cart) }
    product       { build(:product) }
    quantity       1
  end
end
