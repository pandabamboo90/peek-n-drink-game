class Card < ApplicationRecord
  # Association
  belongs_to :set_card

  # Mount uploader
  mount_uploader :image, ImageUploader
end