class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  helper_method :title

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def title
		@title = ["Ermahgerd...Sterck_Erverflo", "Crap_Overflow", "Hack_Overflow", "CheeseArmpit_Overflow", "Jacked_Overflow", "Smack_Overflow", "Clusterfuck"].sample
  end
end
