class CreateGoodsInOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :goods_in_orders do |t|
      t.integer :count

      t.timestamps
    end
  end
end
