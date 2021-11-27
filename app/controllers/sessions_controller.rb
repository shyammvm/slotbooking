class SessionsController < ApplicationController
    def new
    end
    
    def create
      user = User.find_by(email: params[:email].downcase)
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path
      else
        render status: :unauthorized, json: { notice: "Incorrect credentials" }
      end
    end

    def destroy
      reset_session
      render json: { logged_in: false }
      @current_user = nil
      redirect_to sign_in_path
    end
end