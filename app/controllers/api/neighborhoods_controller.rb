class Api::NeighborhoodsController < ApplicationController

  def index
    @neighborhoods = Neighborhood.all
    render "index.json.jbuilder"
  end

  def show
    @neighborhood = Neighborhood.find_by(id: params[:id])
    @user = current_user
    render "show.json.jbuilder"
  end

  def create
    @neighborhood = Neighborhood.new(
      name: params[:name]
      )
    if @neighborhood.save
      render json: {message: 'Neighborhood created successfully'}, status: :created
    else
      render json: {errors: @neighborhood.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @neighborhood = Neighborhood.find_by(id: params[:id])
    @neighborhood.name = params[:name] || @neighborhood.name
    @neighborhood.save
    render "show.json.jbuilder"
  end

  def destroy
    @neighborhood = Neighborhood.find_by(id: params[:id])
    @neighborhood.destroy
    render json: {message: "Neighborhood successfully destroyed"}
  end

end
