class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users.to_json
    end

    def create
        @user = User.create(user_params)
        byebug
        if @user.valid? && @user.authenticate(params[:password])
            token = issue_token(@user)
            render json: {id: @user.id, name: @user.name, jwt: token}
        else
            render json: { error: 'Failed to create user' }, status: :not_acceptable
        end
    end

    private
    def user_params
        params.permit(:user, :name, :password)
    end
end
