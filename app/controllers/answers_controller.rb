class AnswersController < ApplicationController

  def new
    @answer = Answer.new(params[:answer])
    @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.new(params[:answer])
    @answer.user_id = current_user.id
    @answer.save!
    redirect_to "/questions/#{params[:answer][:question_id]}"
  end

end
