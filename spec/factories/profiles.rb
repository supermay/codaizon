FactoryGirl.define do
  factory :profile do
    user        { build(:user)}
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    telephone "MyString"
  end
end
