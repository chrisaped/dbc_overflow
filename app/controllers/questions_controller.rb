class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @answers = Answer.where("question_id = #{@question.id}")
    @answers.sort! { |a, b| b.votes <=> a.votes }
    # (1..10).sort { |a, b| b <=> a }  #=> [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  end

end
