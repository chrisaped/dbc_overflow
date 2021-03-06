class SessionsController < ApplicationController

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.password == params[:session][:password]
      session[:user_id] = @user.id
      redirect_to root_url
    else
      # alert invalid email or password
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
