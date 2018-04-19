class UsersController < ApplicationController
    def new
        @user = User.new
        @avatars = Avatar.all
    end

    def create 
        @user = User.new(user_params)
        @user.avatar_id = params[:avatar_id]
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "You have successfully signed up!"
            redirect_to root_path
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
    end

private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation, :location, :avatar_id)
    end
end