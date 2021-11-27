class ApplicationController < ActionController::Base
    before_action :set_current_user, except: [:new, :create]

     def set_current_user 
        if session[:user_id]
            Current.user = User.find(session[:user_id])
        else 
            session[:user_id] = nil
            redirect_to root_path, notice: "logged out"
        end
    end
end
