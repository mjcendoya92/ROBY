class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activities = Activity.all
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        image_url: helpers.asset_url("https://res.cloudinary.com/mariacend1910/image/upload/v1661948505/images_5_ugq1bx.png")
      }
    end
  end

  def profile
    @dogs = current_user.dogs
  end

end
