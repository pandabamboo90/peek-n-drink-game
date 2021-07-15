class Card < ApplicationRecord
  # Association
  belongs_to :set_card

  # Mount uploader
  mount_uploader :image, ImageUploader

  # Callback
  before_create :set_no

  private

  def set_no
    set = SetCard.find(set_card_id)
    self.no = set.cards.size.to_i + 1
  end
end