class CommentsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @comment = Comment.new(review_params)
    @comment.booking = @booking
    if @comment.save
      redirect_to activity_path(booking.activity)
    else
      render "activities/show", status:
      :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :activity_id, :user_id)
  end
end
