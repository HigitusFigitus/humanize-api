class Company < ApplicationRecord
  has_many :sessions
  has_many :responders, through: :sessions
end
