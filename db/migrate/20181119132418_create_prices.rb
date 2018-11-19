class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.string :mark_of_cardboard
      t.string :gofrolist_price
      t.string :product_price

      t.timestamps
    end
  end
end
