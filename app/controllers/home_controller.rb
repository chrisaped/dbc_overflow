class HomeController < ApplicationController

  def index
    current_user
    @questions = Question.order("created_at DESC")
  end

end
