class UserController < ApplicationController

    get '/users' do 
        User.all.to_json
    end 

    get '/users/:id' do
        find_user
        user.to_json
    end

    post '/users' do 
        user = User.create(
            name: params[:name],
            game_id: params[:game_id]
        )
        user.to_json
    end 

    patch'/users/:id' do
        find_user
        user.update(params)
        user.to_json
    end

    delete '/users/:id' do
        find_user
        user.destroy
    end

private

    def find_user
        user = User.find(params[:id])
    end

end 