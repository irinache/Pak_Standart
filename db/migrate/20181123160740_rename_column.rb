class RenameColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :goods_in_orders, :count, :box_count
  end
end
