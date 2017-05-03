class AddTypeIdToThreat < ActiveRecord::Migration[5.0]
  def change
    add_column :threats, :type_id, :integer
  end
end
