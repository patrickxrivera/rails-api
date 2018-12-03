class UsersController < ApplicationController
    before_action :set_user, only: [:show, :destroy, :update]

    def create
      @user = User.create!(user_params)
      response = { message: Message.account_created }
      json_response(response, :created)
    end

    def index
      users = User.all
      json_response({ users: users })
    end

    def destroy
      @user.destroy!
      response = { message: Message.deleted('User') }
      json_response(response)
    end

    def show
      json_response(@user)
    end

    private

    def set_user
      @user ||= User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username)
    end
end
