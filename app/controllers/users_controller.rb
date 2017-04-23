class UsersController < ApplicationController
  before_action :authenticate_user, only: [:index, :create, :destroy]
  def index
      @users = User.all
      render json: @users

  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
  def destroy
    respond_to User.destroy([params[:id]])
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
