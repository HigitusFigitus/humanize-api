class Session < ApplicationRecord
  belongs_to :company
  has_many   :responders
  has_many   :responses, through: :responders
end
