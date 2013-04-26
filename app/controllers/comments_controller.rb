class CommentsController < ApplicationController

  def new
    @comment = Comment.new(params[:comment], :user_id => current_user.id)
    @question = Question.find(params[:commentable_id])
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
    @comment.save!
    redirect_to "/questions/#{params[:comment][:commentable_id]}"
  end

end
