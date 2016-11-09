Company.destroy_all
Session.destroy_all
Responder.destroy_all
Response.destroy_all
Question.destroy_all

# These are static
questions = [Question.create(body: "I feel supported and accepted by my coworkers."), Question.create(body: "My surroundings promote a productive and collaborative environment."), Question.create(body: "Is your team benefiting from the the Engineering Empathy Sessions?")]

def get_id(objects_with_ids)
  objects_with_ids.map { | object_with_id | object_with_id.id }
end

dropbox = Company.create(name: "Dropbox")

allyship_session = dropbox.sessions.create(date: Date.new(2016, 11, 11), topic: "Allyship", content: "Bloop")
dropbox.sessions.create(date: Date.new(2016, 11, 04), topic: "Difficult Conversations", content: "Bloop")
dropbox.sessions.create(date: Date.new(2016, 10, 28), topic: "Inner Critic", content: "Bloop")
dropbox.sessions.create(date: Date.new(2016, 10, 21), topic: "Teamwork and 360 Feedback", content: "Bloop")

ages = [20, 23, 25, 30, 36, 35, 40, 42, 45, 50, 51, 55, 60, 65, 70]
genders = [
  "Agender",
  "Female",
  "Male",
  "Bigender",
  "Gender-fluid",
  "Transgender"
  ]
positions = [
  "C-Level",
  "Senior",
  "Manager",
  "Junior"
]

responder1 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "C-Level", before: true)
responder1.responses.create(value: rand(1..7), question_id: 1)
responder1.responses.create(value: rand(1..7), question_id: 2)
responder1.responses.create(value: rand(1..7), question_id: 3)

responder2 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: true)
responder2.responses.create(value: rand(1..7), question_id: 1)
responder2.responses.create(value: rand(1..7), question_id: 2)
responder2.responses.create(value: rand(1..7), question_id: 3)

responder3 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: true)
responder3.responses.create(value: rand(1..7), question_id: 1)
responder3.responses.create(value: rand(1..7), question_id: 2)
responder3.responses.create(value: rand(1..7), question_id: 3)

responder4 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "Senior", before: true)
responder4.responses.create(value: rand(1..7), question_id: 1)
responder4.responses.create(value: rand(1..7), question_id: 2)
responder4.responses.create(value: rand(1..7), question_id: 3)

responder5 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "Senior", before: true)
responder5.responses.create(value: rand(1..7), question_id: 1)
responder5.responses.create(value: rand(1..7), question_id: 2)
responder5.responses.create(value: rand(1..7), question_id: 3)

responder6 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "Manager", before: true)
responder6.responses.create(value: rand(1..7), question_id: 1)
responder6.responses.create(value: rand(1..7), question_id: 2)
responder6.responses.create(value: rand(1..7), question_id: 3)

responder7 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "Manager", before: true)
responder7.responses.create(value: rand(1..7), question_id: 1)
responder7.responses.create(value: rand(1..7), question_id: 2)
responder7.responses.create(value: rand(1..7), question_id: 3)

13.times.map { junior_rseponder = allyship_session.responders.create(gender: genders.sample, age: ages.sample, position: "Junior", before: true)
junior_rseponder.responses.create(value: rand(1..7), question_id: 1)
junior_rseponder.responses.create(value: rand(1..7), question_id: 2)
junior_rseponder.responses.create(value: rand(1..7), question_id: 3)}

responder_1 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "C-Level", before: false)
responder_1.responses.create(value: rand(4..7), question_id: 1)
responder_1.responses.create(value: rand(4..7), question_id: 2)
responder_1.responses.create(value: rand(4..7), question_id: 3)

responder_2 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: false)
responder_2.responses.create(value: rand(4..7), question_id: 1)
responder_2.responses.create(value: rand(4..7), question_id: 2)
responder_2.responses.create(value: rand(4..7), question_id: 3)

responder_3 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: false)
responder_3.responses.create(value: rand(4..7), question_id: 1)
responder_3.responses.create(value: rand(4..7), question_id: 2)
responder_3.responses.create(value: rand(4..7), question_id: 3)

responder_4 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "Senior", before: false)
responder_4.responses.create(value: rand(4..7), question_id: 1)
responder_4.responses.create(value: rand(4..7), question_id: 2)
responder_4.responses.create(value: rand(4..7), question_id: 3)

responder_5 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "Senior", before: false)
responder_5.responses.create(value: rand(4..7), question_id: 1)
responder_5.responses.create(value: rand(4..7), question_id: 2)
responder_5.responses.create(value: rand(4..7), question_id: 3)

responder_6 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "Manager", before: false)
responder_6.responses.create(value: rand(4..7), question_id: 1)
responder_6.responses.create(value: rand(4..7), question_id: 2)
responder_6.responses.create(value: rand(4..7), question_id: 3)

responder_7 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "Manager", before: false)
responder_7.responses.create(value: rand(4..7), question_id: 1)
responder_7.responses.create(value: rand(4..7), question_id: 2)
responder_7.responses.create(value: rand(4..7), question_id: 3)

13.times.map { junior_rseponder = allyship_session.responders.create(gender: genders.sample, age: ages.sample, position: "Junior", before: false)
junior_rseponder.responses.create(value: rand(4..7), question_id: 1)
junior_rseponder.responses.create(value: rand(4..7), question_id: 2)
junior_rseponder.responses.create(value: rand(4..7), question_id: 3)}

# Company.destroy_all
# Session.destroy_all
# Responder.destroy_all
# Response.destroy_all
# Question.destroy_all

# def get_id(objects_with_ids)
#   objects_with_ids.map { | object_with_id | object_with_id.id }
# end

# company_1 = Company.create(name: "DevBootcamp")
# company_2 = Company.create(name: "ViewSonic")
# sessions = []
# responders = []
# questions = []

# 30.times do
#   questions <<
#   Question.create(
#     body: [
#     "How welcome and supported do you feel in your work environment?",
#     "Did you feel closer to your coworkers after the Engineering Empathy Session of last week?",
#     "Are you personally benefiting from the the Engineering Empathy Sessions?",
#     "Is your team benefiting from the the Engineering Empathy Sessions?"
#     ].sample
#     )
# end

# 10.times do
#   sessions <<
#   Session.create(
#     # date format: yy/mm/dd
#     date: [
#     Date.new(1970, 01, 01),
#     Date.new(1970, 01, 02),
#     Date.new(1970, 01, 03),
#     Date.new(1970, 01, 04),
#     Date.new(1970, 01, 05)
#     ].sample,
#     topic: [
#       "Curiosity",
#       "Inner Critic",
#       "Emotional Awareness",
#       "Difficult Conversations",
#       "Allyship"
#       ].sample,
#     content: [
#       "Emotional intelligence can be defined as the ability to monitor one's own and other people's emotions, to discriminate between different emotions and label them appropriately and to use emotional information to guide thinking and behavior. Emotional intelligence also reflects abilities to join intelligence, empathy and emotions to enhance thought and understanding of interpersonal dynamics.",
#       "Emotional intelligence is the capability of individuals to recognize their own, and other people's emotions, to discriminate between different feelings and label them appropriately, to use emotional information to guide thinking and behavior, and to manage and/or adjust emotions to adapt environments or achieve one's goals."
#       ].sample,
#     company_id: [company_1.id, company_2.id].sample
#     )
# end

# 50.times do
#   responders <<
#   Responder.create(
#     age: [20, 23, 25, 30, 36, 35, 40, 42, 45, 50, 51, 55, 60, 65, 70].sample,
#     position: [
#       "Position One",
#       "Position Two",
#       "Position Three",
#       "Position Four"
#       ].sample,
#     gender: [
#       "Agender",
#       "Female",
#       "Male",
#       "Bigender",
#       "Gender fluid",
#       "Genderflux",
#       "Transgender"
#       ].sample,
#     before: [false, true].sample,
#     session_id: get_id(sessions).sample
#     )
# end

# 150.times do
#   Response.create(
#     value: [1, 2, 3, 4, 5].sample,
#     responder_id: get_id(responders).sample,
#     question_id: get_id(questions).sample
#     )
# end
