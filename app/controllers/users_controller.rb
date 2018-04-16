class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create 
        @user = User.new
        if @user.save
            flash[:notice] = "You have successfully signed up!"
            redirect_to root_path
        else
            render :new
        end
    end

private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end