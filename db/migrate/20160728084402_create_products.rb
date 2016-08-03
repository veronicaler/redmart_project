class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :product_price
      t.integer :quantity

      t.timestamps
    end
  end
end
