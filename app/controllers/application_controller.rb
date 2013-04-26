class ApplicationController < ActionController::Base

  protect_from_forgery
  helper_method :current_user
  helper_method :title

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def title
		@title = ["I Lerv Sterck Erverflo", "Thers Shert ers Ermahzin!", "Ersk a Qerstern!", "Er mah Gerd, Bertstrerp ers Ermahzin!", "Ermahgerd...Sterck_Erverflo"].sample
  end

end
