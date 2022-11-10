class Product < ApplicationRecord
  belongs_to :category
  has_many :carts, through: :carts_product
end
