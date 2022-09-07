class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @dogs = @user.dogs
    @follow = Follow.find_by(follower_id: current_user, followee_id: @user)
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
