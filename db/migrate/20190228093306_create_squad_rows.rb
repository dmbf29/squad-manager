class CreateSquadRows < ActiveRecord::Migration[5.2]
  def change
    remove_reference :squad_places, :squad

    create_table :squad_rows do |t|
      t.string :number
      t.references :squad, foreign_key: true

      t.timestamps
    end

    add_reference :squad_places, :squad_row, foreign_key: true
  end
end
