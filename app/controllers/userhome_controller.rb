class UserhomeController < ApplicationController
    before_action :set_current_user, except: [:new, :create]
    def index 
        flash[:notice] = "logged in sucessfully"
        flash[:alert] = "invalid email and password"
    end
end