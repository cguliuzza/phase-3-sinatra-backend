class Game < ActiveRecord::Base
    has_many :game_libraries
    has_many :users, through: :game_libraries
end 