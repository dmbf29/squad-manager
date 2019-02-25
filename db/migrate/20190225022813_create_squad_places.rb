class CreateSquadPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :squad_places do |t|
      t.string :name
      t.integer :number
      t.references :squad, foreign_key: true

      t.timestamps
    end
  end
end
