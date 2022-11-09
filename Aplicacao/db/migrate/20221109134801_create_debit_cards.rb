class CreateDebitCards < ActiveRecord::Migration[7.0]
  def change
    create_table :debit_cards do |t|
      t.string :key

      t.timestamps
    end
  end
end
