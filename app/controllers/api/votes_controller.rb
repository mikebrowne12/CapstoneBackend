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
    # if the vote does not exist, continue creating the vote
    # if the vote already exists, edit instead of create
    @vote = Vote.find_by(user_id: current_user.id, attraction_id: params[:attraction_id])
    if @vote
      @vote.value = params[:value] || @vote.value
    else
      @vote = Vote.new(
        user_id: current_user.id, 
        attraction_id: params[:attraction_id], 
        value: params[:value]
        )
      @vote.save
    end

    # if @vote.save
    #   render json: {message: 'Vote created successfully'}, status: :created
    # else
    #   render json: {errors: @vote.errors.full_messages}, status: :bad_request
    # end

  end

end
