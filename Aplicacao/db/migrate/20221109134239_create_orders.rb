class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.string :cancel_motivation
      t.string :track_code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
