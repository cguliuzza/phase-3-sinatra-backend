class CreateGames < ActiveRecord::Migration[6.1]
  def change
      create_table :games do |t|
        t.string :game_title
        t.string :game_developer
        t.string :genre
        t.float :price
        t.string :description
      end
  end
end
