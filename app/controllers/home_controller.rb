class HomeController < ApplicationController
  def index
    @users = User.all
    render :json, only: [:id, :name, :email]
  end
end
