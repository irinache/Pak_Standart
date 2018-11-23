class AddOrderIdToGoodsInOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :goods_in_orders, :order, foreign_key: true
  end
end
