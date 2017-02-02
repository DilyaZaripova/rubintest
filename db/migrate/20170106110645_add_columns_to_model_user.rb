class AddColumnsToModelUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :password
    add_column :users, :password_digest, :string
    add_column :users, :remember_token, :string
    add_index  :users, :remember_token
  end
end
