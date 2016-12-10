class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.string :director
      t.text :description

      t.timestamps
    end
  end
end
