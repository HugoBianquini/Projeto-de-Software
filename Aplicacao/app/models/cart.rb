class Cart < ApplicationRecord
  belongs_to :user
  has_many :products, through: :carts_product
end
