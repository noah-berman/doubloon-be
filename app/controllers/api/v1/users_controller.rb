class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :delete]

  def index
    render json: { user: User.all }
  end

  def show
    render json: @user
  end

  def authenticate
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    byebug
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def new
    @user = User.create
  end

  def delete
    @user.delete
  end



  private

  def user_params
    params.require(:user).permit(:name, :username, :password_digest)
  end

  def find_user
    @user = User.find(params[:id])
  end



end
