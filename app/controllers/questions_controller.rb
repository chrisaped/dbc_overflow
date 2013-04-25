class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @question_comments = @question.comments
    @answers = Answer.where("question_id = #{@question.id}")
  end

end
