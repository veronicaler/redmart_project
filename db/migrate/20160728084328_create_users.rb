class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :address
      t.text :password
      t.integer :credit_card_no

      t.timestamps
    end
  end
end
