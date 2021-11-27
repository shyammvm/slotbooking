module Authenticable
    def set_current_user
      return unless session[:user_id]
  
      @current_user = User.find(session[:user_id])
    end
  
    def current_user
      return @current_user if @current_user
    end
  
    def check_login
      head :forbidden unless @current_user
    end
  end
  