class SetCard < ApplicationRecord
  # Association
  has_many :cards, dependent: :destroy
end