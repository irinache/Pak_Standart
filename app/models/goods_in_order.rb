class GoodsInOrder < ApplicationRecord
  belongs_to :order
  belongs_to :box
 # validates :box_count, presence: true
end
