class Position < ApplicationRecord
  belongs_to :stock_product
  belongs_to :stock
end
