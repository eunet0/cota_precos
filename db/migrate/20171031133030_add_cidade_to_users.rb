class AddCidadeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cidade, :string
  end
end
