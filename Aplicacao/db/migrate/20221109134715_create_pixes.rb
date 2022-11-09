class CreatePixes < ActiveRecord::Migration[7.0]
  def change
    create_table :pixes do |t|
      t.string :key

      t.timestamps
    end
  end
end
