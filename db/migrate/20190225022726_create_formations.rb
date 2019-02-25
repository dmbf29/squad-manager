class CreateFormations < ActiveRecord::Migration[5.2]
  def change
    create_table :formations do |t|
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
