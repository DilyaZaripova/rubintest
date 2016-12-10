class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :seance_id
      t.integer :status_id
      t.integer :number

      t.timestamps
    end
  end
end
