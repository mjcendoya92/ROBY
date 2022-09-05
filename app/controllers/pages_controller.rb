class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activities = Activity.all
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "activities/info_window", locals: { activity: activity }),
        image_url: helpers.asset_url("https://res.cloudinary.com/mariacend1910/image/upload/v1661948505/images_5_ugq1bx.png")
      }
    end
    # @chatroom = Chatroom.find_by(params[:chatroom_id])
  end

  def profile
    @dogs = current_user.dogs
    #@activity = Activity.find(params[:id])
    @user_booking = Booking.where(user: current_user)
  end
end
