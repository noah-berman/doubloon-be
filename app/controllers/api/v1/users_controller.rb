class Api::V1::UsersController < ApplicationController
  before_action :find_note, only: [:update]





  private

  def user_params
    params.permit(:name, :username, :password_digest)
  end



end
