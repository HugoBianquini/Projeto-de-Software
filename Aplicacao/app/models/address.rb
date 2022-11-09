class Address < ApplicationRecord
    has_one  :store
    has_and_belongs_to_many :users
end
