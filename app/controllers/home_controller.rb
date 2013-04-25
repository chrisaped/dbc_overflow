class HomeController < ApplicationController
  def index
    current_user
    @title = ["Ermahgerd...Sterck_Erverflo", "Crap_Overflow", "Hack_Overflow", "CheeseArmpit_Overflow", "Jacked_Overflow", "Smack_Overflow", "Clusterfuck"].sample
    @questions = Question.order("created_at DESC")
    # @questions.sort! { |a, b| b.votes <=> a.votes }
  end
end
