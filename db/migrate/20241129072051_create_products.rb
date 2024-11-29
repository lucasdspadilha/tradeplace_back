class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :product_img
      t.string :product_name
      t.decimal :rating_value
      t.decimal :product_value
      t.integer :qty_available
      t.integer :qty_sold

      t.timestamps
    end
  end
end
