class OrderPick < ApplicationRecord
  belongs_to :position
  belongs_to :order
  belongs_to :user
end
