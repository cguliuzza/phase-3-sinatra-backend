class GamesController < ApplicationController

    get '/games' do 
        Game.all.to_json
    end 

    get '/games/:id' do
        user = User.find(params[:id])
        games = user.games
        games.to_json
    end

    post '/games' do 
        game = Game.create(
            game_title: params[:game_title],
            game_developer: params[:game_developer],
            genre: params[:genre],
            price: params[:price],
            description: params[:description]
        )
        game.to_json
    end 

    patch'/games/:id' do
        find_game
        game.update(params)
        game.to_json
    end

    delete '/games/:id' do
        find_game
        game.destroy
    end

private

    def find_game
        game = Game.find(params[:id])
    end

    def find_user_games
        game = Game.find(params[:id])
    end

end 