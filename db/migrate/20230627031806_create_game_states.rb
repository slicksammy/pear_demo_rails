class CreateGameStates < ActiveRecord::Migration[7.0]
  def change
    create_table :game_states do |t|
      t.integer :width
      t.integer :height
      t.text :snake_array

      t.timestamps
    end
  end
end
