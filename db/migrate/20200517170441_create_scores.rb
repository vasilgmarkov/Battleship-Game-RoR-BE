class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.float :points
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
