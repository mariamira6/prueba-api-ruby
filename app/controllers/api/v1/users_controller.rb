module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        render json: @users
      end

      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      def show
      end

      def update
      end

      def destroy
      end

      private

      def user_params
        params.require(:user).permit(:name, :lastname, :username, :email)
      end
    end
  end
end
