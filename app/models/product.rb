class Product < ApplicationRecord
  has_and_belongs_to_many :cart
  has_many :buyers, through: :cart, source: :user
end
