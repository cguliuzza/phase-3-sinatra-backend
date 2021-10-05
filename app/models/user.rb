class User < ActiveRecord::Base
    has_many :game_libraries
    has_many :games, through: :game_libraries
end 