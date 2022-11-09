class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.string :type
      t.string :code
      t.references :stock_product, null: false, foreign_key: true
      t.integer :quantity
      t.references :stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
