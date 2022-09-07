class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @dogs = @user.dogs
    @follow = Follow.find_by(follower_id: current_user, followee_id: @user)
  end
end
