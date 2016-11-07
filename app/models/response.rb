class Response < ApplicationRecord
  scope :by_value, -> (value) {where("value = ?", value)}

  belongs_to :responder
  belongs_to :question
end
