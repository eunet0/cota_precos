class AddMarcaToProdutos < ActiveRecord::Migration[5.0]
  def change
    add_column :produtos, :marca, :string
  end
end
