class Response < ApplicationRecord
  belongs_to :responder
  belongs_to :question
end
