class RoomsChannel < ApplicationCable::Channel
  def subscribed
    return if params[:id].nil?
    stream_for "room_#{ params[:id] }"
  end

  def unsubscribed
  end
end