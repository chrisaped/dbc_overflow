class UsersController < ApplicationController

  def create
    @user = User.create(params[:user])
    redirect_to root_path
  end

  def show
  end

  def new
    @user = User.new(params[:user])
  end

end
