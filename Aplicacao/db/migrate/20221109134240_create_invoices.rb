class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.references :supplier, null: false, foreign_key: true
      t.references :order,  foreign_key: true
      t.string :hash
      t.date :emission
      t.string :status

      t.timestamps
    end
  end
end
