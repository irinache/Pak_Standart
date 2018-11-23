class CreateBoxes < ActiveRecord::Migration[5.1]
  def change
    create_table :boxes do |t|
      t.float :width
      t.float :length
      t.float :height
      t.float :density
      t.string :color
      t.string :special_holes

      t.timestamps
    end
  end
end
