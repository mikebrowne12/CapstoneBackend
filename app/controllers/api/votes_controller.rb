class Api::VotesController < ApplicationController

  def index
    @votes = Vote.all 
    render "index.json.jbuilder"
  end

  def show
    @vote = Vote.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @vote = Vote.new(
      attraction_id: params[:attraction_id], 
      value: params[:value]
      )
    if @vote.save
      render json: {message: 'Vote created successfully'}, status: :created
    else
      render json: {errors: @vote.errors.full_messages}, status: :bad_request
    end

  end

end
