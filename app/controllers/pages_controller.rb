class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activities = Activity.geocoded.order("id").limit(6)
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "activities/info_window", locals: { activity: activity }),
        image_url: helpers.asset_url("https://res.cloudinary.com/mariacend1910/image/upload/v1662372896/dog_pin_2_kgunoh.svg")
      }
    end
    # @chatroom = Chatroom.find_by(params[:chatroom_id])
  end

  def profile
    @dogs = current_user.dogs
  end
end
