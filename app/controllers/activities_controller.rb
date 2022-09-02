class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        image_url: helpers.asset_url("https://res.cloudinary.com/mariacend1910/image/upload/v1661948505/images_5_ugq1bx.png")
      }
    end
  end

  def new
    @activity = Activity.new
    # @activity.categories.name
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user_booking = Booking.find_by(user: current_user, activity: @activity)
    @booking = Booking.new
    @comment = Comment.new
  end

  def update
    if @activity.update(activity_params)
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @activity.destroy
    redirect_to activity_path, status: :see_other
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :location, :start_date, :end_date, :start_time, :end_time, :dog_limit, :people_limit, :price, :status, activity_categories: { category_id: [] })
  end
end
