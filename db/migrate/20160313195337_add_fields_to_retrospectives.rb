class AddFieldsToRetrospectives < ActiveRecord::Migration[5.0]
  def change
    add_column :retrospectives, :what_went_wrong, :string
    add_column :retrospectives, :triage_list_id, :integer
    add_column :retrospectives, :prevention_list_id, :integer
    add_column :retrospectives, :cost_id, :integer
    add_column :retrospectives, :cost_type, :integer
  end
end
