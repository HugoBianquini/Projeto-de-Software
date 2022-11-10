class CreateAddressesUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
