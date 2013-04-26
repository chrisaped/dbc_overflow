class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.order("vote_count DESC")
  end

  def new
  	@question = Question.new(params[:question])
  end

  def create
  	@question = Question.new(params[:question])
  	@question.user_id = current_user.id
  	if @question.save!
      flash[:notice] = "Yay! Soon you'll be smarter!"
    end
  	redirect_to root_path
  end

end
