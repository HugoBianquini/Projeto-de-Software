class OrderPick < ApplicationRecord
  belongs_to :position
  belongs_to :user
end
