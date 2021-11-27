class SessionsController < ApplicationController
    def new
    end
    
    def create
        byebug
        user = User.find_by(email: params[:email].downcase)
        if user&.authenticate(params[:password_digest])
          session[:user_id] = user.id
          render status: :ok,
                 json: { status: :created, logged_in: true, user: user,
                         notice: "Logged in!" }
        else
          render status: :unauthorized, json: { notice: "Incorrect credentials" }
        end
    end

    

    # def session_params
    #     params.permit(:email, :password_digest)
    # end
end