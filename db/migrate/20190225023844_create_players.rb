class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :nation
      t.integer :age
      t.integer :potential_high
      t.integer :potential_low
      t.integer :rating
      t.string :badge
      t.integer :status
      t.string :photo
      t.references :squad_place, foreign_key: true

      t.timestamps
    end
  end
end
