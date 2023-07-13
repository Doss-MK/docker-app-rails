class HomeController < ApplicationController
  def index
    @users = User.all
    render json: @users, only: [:id, :name, :email]
  end
end
