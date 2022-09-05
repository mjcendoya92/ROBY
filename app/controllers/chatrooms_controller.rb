class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @chatroom = Chatroom.new
    @chatroom.activity = @activity
    if @chatroom.save
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
