class AddCollumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rua, :string
    add_column :users, :numero, :integer
    add_column :users, :bairro, :string
    add_column :users, :complemento, :string
  end
end
