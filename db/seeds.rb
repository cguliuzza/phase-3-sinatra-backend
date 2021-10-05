puts ":seedling: Seeding spices..."
# Seed your database here
# This will delete any existing rows from the game and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Game.destroy_all
User.destroy_all
GameLibrary.destroy_all

puts "Creating users..."
user1 = User.create(name: "Tina")
user2 = User.create(name: "Gabriel Miranda")
user3 = User.create(name: "Gabe")
user4 = User.create(name: "Francisco")

puts "Creating games..."
game1 = Game.create(game_title: "New World", price: 39.99, game_studio: "Amazon Game Studios", genre:"MMO, RPG", description: "Gabe likes this")
game2 = Game.create(game_title: "Slay the Spire", price: 20.00, game_studio: "Mega Crit Games", genre:"Roguelike, Deck-building game, Strategy video game", description: "Gabe likes this")
game3 = Game.create(game_title: "Stardew Valley", price: 5, game_studio: "Eric Barone", genre: "Simulation, Casual, Role-Playing, Indie", description: "Tina likes this")
game4 = Game.create(game_title: "God of War", price: 50, game_studio: "Santa Monica Studios", genre: "Hack and slash, Action-Adventure", description: "Francisco likes this")

# t.integer :game_id
# t.integer :user_id
# t.date :timestamp
puts "Creating game libraries..."
game_library1 = GameLibrary.create(game_id: game1.id, user_id: user1.id)
game_library2 = GameLibrary.create(game_id: game2.id, user_id: user2.id)
game_library3 = GameLibrary.create(game_id: game3.id, user_id: user2.id)
game_library4 = GameLibrary.create(game_id: game3.id, user_id: user3.id)
#profile3 = Profile.create(game_id: 3, user_id: 1)
puts ":white_check_mark: Done seeding!"