# frozen_string_literal: true

module Authenticable
  def set_current_user
    return unless session[:user_id]

    @current_user = User.find(session[:user_id])
  end
  
end
