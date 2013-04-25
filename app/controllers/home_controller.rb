class HomeController < ApplicationController
  def index
    current_user
    @questions = Question.all
  end
end
