class CommentsController < ApplicationController

  def new
    @comment = Comment.new(params[:comment], :user_id => current_user.id)
    # if @comment.commentable_type == "Answer"
    #   @question = Question.find(params[:commentable_id])
    # else
    @question = Question.find(params[:comment][:question_id])
    # end
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
    @comment.save!
    redirect_to "/questions/#{params[:question_id]}"
  end

end
