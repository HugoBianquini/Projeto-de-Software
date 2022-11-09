class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :type
      t.string :name
      t.string :street
      t.string :complment
      t.string :number
      t.string :neighbor
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
