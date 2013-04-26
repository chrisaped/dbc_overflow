class HomeController < ApplicationController
  def index
    current_user
    @questions = Question.order("created_at DESC")
    # @questions.sort! { |a, b| b.votes <=> a.votes }
  end
end
