class User < ApplicationRecord
    has_and_belongs_to_many :addresses
    has_many :orders
    has_one :cart
end
