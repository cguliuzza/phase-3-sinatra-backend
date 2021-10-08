class UsersController < ApplicationController

    get '/users' do 
        User.all.to_json
    end 

    get '/users/:id' do
        binding.pry
        find_user
        user.to_json
    end

    post '/users' do 
        binding.pry
        # user = User.create(
        #     name: params[:name],
        #     gamer_tag: params[:gamer_tag],
        #     bio: params[:bio],
        #     creation_date: params[:creation_date],
        #     image_url: params[:image_url]
        #     email: params[:email]
        #     password: params[:password]
        # )
        user = User.create(params)
        user.to_json
    end 

    patch'/users/:id' do
        user = User.find(params[:id])
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