class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    json_response(@users)
  end

  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  def show
    @user = User.find(params[:id])
    json_response(@user)
  end

  def authenticate
    @user = User.find_by(username: params[:username], password: params[:password])
    json_response(@user)
  end

  def destroy
  end

  private

  def user_params
    params.permit(:username, :password, :forename, :lastname)
  end
end
