class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email, limit: 100
      t.string :password

      t.timestamps
    end
  end
end
