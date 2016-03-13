class CreateFeelings < ActiveRecord::Migration[5.0]
  def change
    create_table :feelings do |t|

      t.timestamps
    end
  end
end
