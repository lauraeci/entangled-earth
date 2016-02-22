class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :level, limit: 36, null: false
      t.string :player1, limit: 36, null: false
      t.string :player2, limit: 36, null: false
      t.integer :objective_count
      t.string :winner, limit: 36, null: false

      t.timestamps
    end
  end
end
