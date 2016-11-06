class Responder < ApplicationRecord
  belongs_to :session
  has_many   :responses
end
