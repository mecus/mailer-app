class Order < ApplicationRecord
  has_many :coffees, dependent: :destroy
end
