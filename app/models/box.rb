class Box < ApplicationRecord
  has_many :goods_in_orders
  validates :length, :width, :height, presence: true
  accepts_nested_attributes_for :goods_in_orders
end
