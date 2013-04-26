class VotesController < ApplicationController

  def new
    # @vote = Vote.new(params[:vote], :user_id => current_user.id)
  end

  def create
    @vote = Vote.new(:voteable_type => params[:voteable_type], :voteable_id => params[:voteable_id])
    @vote.user_id = current_user.id
    if !@vote.save
      flash[:notice] = "Zermgerd, yer vertin' ter merch!!"
      params[:voteable_type] == "Question" ? id = params[:voteable_id] : id = params[:question]
      redirect_to "/questions/#{id}"
    else
      @vote.save
      params[:vote_type] == "up" ? vote = 1 : vote = -1
      if @vote.voteable_type == "Answer"
        Answer.update_counters @vote.voteable_id, :vote_count => vote
        redirect_to "/questions/#{params[:question]}"
      else
        Question.update_counters @vote.voteable_id, :vote_count => vote
        redirect_to "/questions/#{params[:voteable_id]}"
      end
    end
  end

end
