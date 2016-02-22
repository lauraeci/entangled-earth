class ChangeDefaultsGame < ActiveRecord::Migration[5.0]
  def change
        # change_column :table_name, :column_name, :new_type
        change_column :games, :player1, :string, limit: 36, null: true
        change_column :games, :player2, :string, limit: 36, null: true
        change_column :games, :winner, :string, limit: 36, null: true
  end
end
