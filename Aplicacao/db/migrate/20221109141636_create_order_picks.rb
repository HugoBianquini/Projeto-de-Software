class CreateOrderPicks < ActiveRecord::Migration[7.0]
  def change
    create_table :order_picks do |t|
      t.references :position, null: false, foreign_key: true
      t.integer :quantity
      t.references :user, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
