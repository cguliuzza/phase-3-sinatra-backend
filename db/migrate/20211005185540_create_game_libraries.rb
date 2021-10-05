class CreateGameLibraries < ActiveRecord::Migration[6.1]
  def change
    create_table :game_libraries do |t|
      t.integer :user_id
      t.integer :game_id
    end
  end
end
