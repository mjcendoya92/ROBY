class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit]

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def show
    @user_booking = Booking.find_by(user: current_user, activity: @activity)
    @booking = Booking.new
  end

  def edit
  end

  def update
    if @activity.update()
  end


  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :location, :start_date, :end_date, :start_time, :end_time, :dog_limit, :people_limit, :price, :status)
  end
end
