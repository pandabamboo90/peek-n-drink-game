class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])

    @cards = if @room.set_card.present? && !@room.list_cards.empty?
      Card.find(@room.list_cards).sort_by{ |card| @room.list_cards.index card.id }
    end

    @sets = SetCard.all
  end

  def leave_room
    session[:room_id] = nil
    redirect_to rooms_path
  end
end