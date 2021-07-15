class SetsController < ApplicationController
  def show
    @set = SetCard.find(params[:id])
    @cards = @set.cards
  end
end