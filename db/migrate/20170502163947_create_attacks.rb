class CreateAttacks < ActiveRecord::Migration[5.0]
  def change
    create_table :attacks do |t|
      t.string :name
      t.string :attacker
      t.string :attacker_ip
      t.string :attacker_geo
      t.string :target
      t.string :target_ip
      t.string :target_geo

      t.timestamps
    end
  end
end
