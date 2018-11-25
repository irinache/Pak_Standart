class GoodsInOrder < ApplicationRecord
  belongs_to :order
  belongs_to :box
  attr_accessor :order_id
 # validates :box_count, presence: true
end
