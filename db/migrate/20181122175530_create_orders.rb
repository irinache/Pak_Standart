class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.date :date_of_dispatch
      t.string :address
      t.string :delivery_method
      t.string :payment_method
      t.string :status

      t.timestamps
    end
  end
end
