class CommentsController < ApplicationController
  def create
    @activity = Activity.find(params[:activity_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.activity = @activity
    if @comment.save
      redirect_to activity_path(@activity)
    else
      @booking = Booking.new
      render "activities/show", status:
      :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
