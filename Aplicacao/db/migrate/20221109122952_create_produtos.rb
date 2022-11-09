class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :descricao
      t.string :fabricante
      t.boolean :exige_prescricao
      t.string :img_url
      t.references :categoria, null: false, foreign_key: true

      t.timestamps
    end
  end
end
