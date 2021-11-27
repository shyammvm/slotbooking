class MainController < ApplicationController
    # skip_before_action :set_current_user, only: [ :index]
    def index 
        
        # session[:user_id] = nil
        # before_filter :login_required, :except=>[:new, :create]
        if Current.user
            if Current.user.role == "admin"
                render 'admin/index'
            else 
                render 'userhome/index'
            end 
        else 
            render 'sessions/new'
        end
    end

    # def nouser
    #     if !Current.user
    #         render 
    #     end
    # end
    # def sign_in
    #     # submit form and do your stuff here
    #     # and if your form submission was successful you would do something like this:    
    #     redirect_to admin_first_page_index_path and return if is_admin?
    #     redirect_to first_page_index_path and return
    #   end
end