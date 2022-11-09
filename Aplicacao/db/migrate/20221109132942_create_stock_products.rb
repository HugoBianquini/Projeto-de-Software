class CreateStockProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :stock_products do |t|
      t.references :product, null: false, foreign_key: true
      t.string :batch
      t.date :fabrication
      t.date :validity
      t.integer :quantity
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
