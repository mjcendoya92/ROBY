class BookingsController < ApplicationController
  before_action :set_activity, only: [:create]

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.activity = @activity
    if @booking.save
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @booking.activity = @activity
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to activities_path(@activity)
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.user.id == current_user.id
      @booking.destroy
      redirect_to home_path, status: :see_other
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:number_people, :number_dogs, :activity_id)
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end
end
