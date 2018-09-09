class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :delete]

  def index
    render json: { user: User.all }
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: {budget: @user}
  end

  def new
    @user = User.create
  end

  def delete
    @user.delete
  end



  private

  def user_params
    params.permit(:name, :username, :password_digest)
  end

  def find_user
    @user = User.find(params[:id])
  end



end
