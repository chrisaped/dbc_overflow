class VotesController < ApplicationController

  def new
    @vote = Vote.new(params[:vote])
  end

  def create
    @vote = Vote.create(params[:vote])
  end

end
