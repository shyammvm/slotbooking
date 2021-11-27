class SessionsController < ApplicationController

    def new 

    end

    def create 
        user = User.find_by(email: params[:email]) 
        if user.present? 
            session[:user_id] = user.id
            redirect_to root_path, notice: "logged in sucessfully"
        else
            flash[:alert] = "Invalid email or password"
            render :new
        end
    end


    def destroy 
        session[:user_id] = nil
        redirect_to sign_in_path, notice: "logged out"
    end
     
end


# && user.authenticate(params[:password])