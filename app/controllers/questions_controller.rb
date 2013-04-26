class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.order("vote_count DESC")
    # @answers.sort! { |a, b| b.votes <=> a.votes }
    # (1..10).sort { |a, b| b <=> a }  #=> [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  end

  def new
  	@question = Question.new(params[:question])
  end

  def create
  	@question = Question.new(params[:question])
  	@question.user_id = current_user.id
  	@question.save!
  	redirect_to root_path
  end

end
