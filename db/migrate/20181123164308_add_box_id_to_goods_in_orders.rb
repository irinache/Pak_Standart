class AddBoxIdToGoodsInOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :goods_in_orders, :box, foreign_key: true
  end
end
