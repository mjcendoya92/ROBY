class FollowsController < ApplicationController
  def create
    @follow = Follow.new
    @user = User.find(params[:user_id])
    @follow.followee = @user
    @follow.follower = current_user
    if @follow.save
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user), alert: "Could not follow person"
    end
  end
end
