class CreateAccomplishments < ActiveRecord::Migration[5.0]
  def change
    create_table :accomplishments do |t|

      t.timestamps
    end
  end
end
