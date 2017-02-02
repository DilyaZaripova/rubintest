class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.integer :user_id
      t.integer :image_id
      t.integer :theme_id
      t.string :name
      t.string :author
      t.string :description
      t.integer :release

      t.timestamps
    end
  end
end
