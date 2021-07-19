class CardsController < ApplicationController
  def pick_card
    room = Room.find(params[:room_id])
    room.card_no << params[:card_id]
    room.save
    ActionCable.server.broadcast("rooms:room_#{ room.id }", { card_id: params[:card_id] })
    render json: {}
  end
end