class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.string :ship_type
      t.string :locations
      t.references :game_player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
