class AddThreatIdToAttack < ActiveRecord::Migration[5.0]
  def change
    add_column :attacks, :threat_id, :integer
  end
end
