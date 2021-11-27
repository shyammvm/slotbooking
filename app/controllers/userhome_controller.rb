# frozen_string_literal: true

class UserhomeController < ApplicationController
  def index
    flash[:notice] = 'logged in sucessfully'
    flash[:alert] = 'invalid email and password'
  end
end
