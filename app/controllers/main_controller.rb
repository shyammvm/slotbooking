# frozen_string_literal: true

class MainController < ApplicationController
  def index
    if @current_user
      if @current_user.role == 'admin'
        render 'admin/index'
      else
        render 'userhome/index'
      end
    else
      render 'sessions/new'
    end
  end
end
