class Response < ApplicationRecord
  belongs_to :responder
  belongs_to :question

  scope :by_value, -> (value) {where("value = ?", value)}



  #def by_question(question_body)
  #  question = Question.find_by(body: question_body)
  #  responses = Response.where(question_id: question.id)
  #end
end
