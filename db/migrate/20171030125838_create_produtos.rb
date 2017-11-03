class CreateProdutos < ActiveRecord::Migration[5.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.integer :embalagem
      t.string :atacadao
      t.string :assai
      t.string :walmart

      t.timestamps
    end
  end
end
