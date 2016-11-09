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
  "Staff"
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

13.times.map { staff_responder = allyship_session.responders.create(gender: genders.sample, age: ages.sample, position: "Staff", before: true)
staff_responder.responses.create(value: rand(1..7), question_id: 1)
staff_responder.responses.create(value: rand(1..7), question_id: 2)
staff_responder.responses.create(value: rand(1..7), question_id: 3)}

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

13.times.map { staff_responder = allyship_session.responders.create(gender: genders.sample, age: ages.sample, position: "Staff", before: false)
staff_responder.responses.create(value: rand(4..7), question_id: 1)
staff_responder.responses.create(value: rand(4..7), question_id: 2)
staff_responder.responses.create(value: rand(4..7), question_id: 3)}