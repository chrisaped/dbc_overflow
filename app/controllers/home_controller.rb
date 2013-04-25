class HomeController < ApplicationController
  def index
    current_user
    @title = ["Crap_Overflow", "Hack_Overflow", "CheeseArmpit_Overflow", "Jacked_Overflow", "Smack_Overflow"].sample
    @questions = Question.all
  end
end
