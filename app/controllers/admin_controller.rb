class AdminController.rb < ApplicationController
    before_action :set_current_user, except: [:new, :create]
    def index 

    end
end