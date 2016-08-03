class CreateUsers < ActiveRecord::Migration[5.0]
  def change


    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :password_digest
      t.integer :credit_card_no
      t.string :remember_digest


      t.timestamps
    end
  end
end
