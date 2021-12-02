# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:notice] = 'incorrect email or password'
      redirect_to sign_in_path notice
    end
  end

  def destroy
    reset_session
    # render json: { logged_in: false }
    @current_user = nil
    render 'logout/index'
  end
end
