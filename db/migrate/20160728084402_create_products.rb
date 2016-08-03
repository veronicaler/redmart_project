class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :product_name
      t.integer :product_price
      t.integer :quantity

      t.timestamps
    end
  end
end
