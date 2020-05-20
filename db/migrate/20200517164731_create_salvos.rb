class CreateSalvos < ActiveRecord::Migration[6.0]
  def change
    create_table :salvos do |t|
      t.integer :turn
      t.string :locations
      t.references :game_player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
