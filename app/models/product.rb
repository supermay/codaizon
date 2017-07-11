class Product < ApplicationRecord
  belongs_to :cart
  has_many :buyers ,through :cart, source: :user
end
