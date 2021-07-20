class CardsController < ApplicationController
  def shuffle_card
    set = SetCard.find(params[:set_id])
    cards = set.cards.shuffle
    room = Room.find(params[:room_id])
    room.update(
      set_card_id: set.id,
      card_ids: [],
      list_cards: cards.pluck(:id)
    )

    ActionCable.server.broadcast("rooms:room_#{ room.id }", { set_id: set.id, cards: cards, shuffle: true })
    render json: {}
  end

  def pick_card
    room = Room.find(params[:room_id])
    room.card_ids << params[:card_id]
    room.save

    ActionCable.server.broadcast("rooms:room_#{ room.id }", { card_id: params[:card_id], shuffle: false })
    render json: {}
  end
end