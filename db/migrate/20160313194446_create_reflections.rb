class CreateReflections < ActiveRecord::Migration[5.0]
  def change
    create_table :reflections do |t|

      t.timestamps
    end
  end
end
