class Order < ApplicationRecord
  belongs_to :user
  has_many :goods_in_orders, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  accepts_nested_attributes_for :goods_in_orders
end
