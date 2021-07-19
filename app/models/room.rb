class Room < ApplicationRecord
  belongs_to :set_card, optional: true
end