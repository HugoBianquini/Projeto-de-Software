class Supplier < ApplicationRecord
  belongs_to :address
  has_many :invoices
end
