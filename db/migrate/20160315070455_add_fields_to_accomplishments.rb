class AddFieldsToAccomplishments < ActiveRecord::Migration[5.0]
  def change
    add_column :accomplishments, :i_accomplished, :string
    add_column :accomplishments, :on, :datetime
  end
end
