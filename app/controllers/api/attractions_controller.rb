class Api::AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
    render "index.json.jbuilder"
  end

  def show
    @attraction = Attraction.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @attraction = Attraction.new(
      name: params[:name], 
      neighborhood_id: params[:neighborhood_id]
      )
    if @attraction.save
      render json: {message: 'Attraction created successfully'}, status: :created
    else
      render json: {errors: @attraction.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @attraction = Attraction.find_by(id: params[:id])
    @attraction.name = params[:name] || @attraction.name
    @attraction.neighborhood_id = params[:neighborhood_id] || @attraction.neighborhood_id
    @attraction.save
    render "show.json.jbuilder"
  end

  def destroy
    @attraction = Attraction.find_by(id: params[:id])
    @attraction.destroy
    render json: {message: "Attraction successfully destroyed"}
  end

end
