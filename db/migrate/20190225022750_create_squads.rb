class CreateSquads < ActiveRecord::Migration[5.2]
  def change
    create_table :squads do |t|
      t.references :user, foreign_key: true
      t.references :formation, foreign_key: true
      t.string :name
      t.string :badge

      t.timestamps
    end
  end
end
