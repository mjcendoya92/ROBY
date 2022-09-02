class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
  
    # @chatroom = Chatroom.find_by(params[:chatroom_id])
    @message = Message.new
  end
end
