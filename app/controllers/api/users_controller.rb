class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render "index.json.jbuilder"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create 
    @user = User.new(
      user_name: params[:user_name], 
      email: params[:email], 
      neighborhood_id: params[:neighborhood_id],
      password: params[:password]
      )
    if @user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.user_name = params[:user_name] || @user.user_name
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
    @user.save
    render "show.json.jbuilder"
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "User successfully destroyed"}
  end

end