class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])

    if params[:set_id].present?
      @room.update(set_card_id: params[:set_id])
    end

    @set = @room.set_card
  end

  def leave_room
    session[:room_id] = nil
    redirect_to rooms_path
  end
end