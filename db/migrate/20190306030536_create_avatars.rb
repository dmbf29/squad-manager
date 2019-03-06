class CreateAvatars < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :photo, :string

    create_table :avatars do |t|
      t.string :photo

      t.timestamps
    end

    add_reference :players, :avatar, foreign_key: true
  end
end
