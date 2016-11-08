class Responder < ApplicationRecord
  belongs_to :session
  has_many   :responses

  scope :before, -> (before) {where("before = ?", before)}
end
