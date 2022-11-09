class Cart < ApplicationRecord
  belongs_to :client
  has_and_belongs_to_many :products
end
