class Api::V1::AuthController < ApplicationController

    def create 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = issue_token(user)
            render json: {id: user.id, username: user.username, jwt: token}
        else
            render json: {error: "User Not Found"}, status: 401
        end
    end

    def show
        user = User.find_by(id: user_id)
        if user && logged_in?
            render json: { id: user.id, username: user.username}
        else 
            render json: {error: "User Not Found"}, status: 401
        end
    end
end