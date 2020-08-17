class SessionsController < ApplicationController

    def login
    end

    def process_login
        @user = User.find_by(username: params[:username])
        if @user
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash.now[:login_error] = "Username is not valid"
            render :login
        end
    end

    def logout
        session.clear
        redirect_to countries_path
    end

end