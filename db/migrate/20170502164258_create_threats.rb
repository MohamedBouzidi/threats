class CreateThreats < ActiveRecord::Migration[5.0]
  def change
    create_table :threats do |t|
      t.string :name
      t.text :description
      t.string :risk
      t.date :date_discovered

      t.timestamps
    end
  end
end
