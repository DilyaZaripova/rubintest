class CreateSeances < ActiveRecord::Migration[5.0]
  def change
    create_table :seances do |t|
      t.integer :hall_id
      t.integer :movie_id
      t.date :datetime
      t.integer :price

      t.timestamps
    end
  end
end
