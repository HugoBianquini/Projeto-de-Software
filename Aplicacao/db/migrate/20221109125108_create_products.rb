class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :manufacturer
      t.boolean :prescribable
      t.string :img_url
      t.float :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
