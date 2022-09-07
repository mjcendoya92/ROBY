class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @dogs = @user.dogs
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to profile_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :bio, :location, :photo, :banner_photo)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
