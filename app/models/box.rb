class Box < ApplicationRecord
  has_many :goods_in_orders
  validates :length, :width, :height, presence: true
end
