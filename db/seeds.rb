Company.destroy_all
Session.destroy_all
Responder.destroy_all
Response.destroy_all
Question.destroy_all

# These are static
questions = [Question.create(body: "My surroundings promote a productive and collaborative environment."), Question.create(body: "I feel supported and accepted by my coworkers."), Question.create(body: "I value and respect diversity in gender, age, and culture.")]

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

def get_id(objects_with_ids)
  objects_with_ids.map { | object_with_id | object_with_id.id }
end

dropbox = Company.create(name: "Dropbox")

teamwork_session = dropbox.sessions.create(date: Date.new(2016, 10, 21), topic: "Teamwork and 360 Feedback", content: "Bloop")
inner_critic_session = dropbox.sessions.create(date: Date.new(2016, 10, 28), topic: "Inner Critic", content: "Bloop")
difficult_conversations_session = dropbox.sessions.create(date: Date.new(2016, 11, 04), topic: "Difficult Conversations", content: "Bloop")
allyship_session = dropbox.sessions.create(date: Date.new(2016, 11, 11), topic: "Allyship", content: "Bloop")

# allyship responders before

responder1 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "C-Level", before: true)
responder1.responses.create(value: rand(1..5), question_id: 1)
responder1.responses.create(value: rand(1..5), question_id: 2)
responder1.responses.create(value: rand(1..5), question_id: 3)

responder2 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: true)
responder2.responses.create(value: rand(1..5), question_id: 1)
responder2.responses.create(value: rand(1..5), question_id: 2)
responder2.responses.create(value: rand(1..5), question_id: 3)

responder3 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: true)
responder3.responses.create(value: rand(1..5), question_id: 1)
responder3.responses.create(value: rand(1..5), question_id: 2)
responder3.responses.create(value: rand(1..5), question_id: 3)

responder4 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "Senior", before: true)
responder4.responses.create(value: rand(1..5), question_id: 1)
responder4.responses.create(value: rand(1..5), question_id: 2)
responder4.responses.create(value: rand(1..5), question_id: 3)

responder5 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "Senior", before: true)
responder5.responses.create(value: rand(1..5), question_id: 1)
responder5.responses.create(value: rand(1..5), question_id: 2)
responder5.responses.create(value: rand(1..5), question_id: 3)

responder6 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "Manager", before: true)
responder6.responses.create(value: rand(1..5), question_id: 1)
responder6.responses.create(value: rand(1..5), question_id: 2)
responder6.responses.create(value: rand(1..5), question_id: 3)

responder7 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "Manager", before: true)
responder7.responses.create(value: rand(1..5), question_id: 1)
responder7.responses.create(value: rand(1..5), question_id: 2)
responder7.responses.create(value: rand(1..5), question_id: 3)

13.times.map { junior_responder = allyship_session.responders.create(gender: genders.sample, age: ages.sample, position: "Junior", before: true)
junior_responder.responses.create(value: rand(1..5), question_id: 1)
junior_responder.responses.create(value: rand(1..5), question_id: 2)
junior_responder.responses.create(value: rand(1..5), question_id: 3)}

# allyship responders after

responder1 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "C-Level", before: false)
responder1.responses.create(value: rand(4..7), question_id: 1)
responder1.responses.create(value: rand(4..7), question_id: 2)
responder1.responses.create(value: rand(4..7), question_id: 3)

responder2 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: false)
responder2.responses.create(value: rand(4..7), question_id: 1)
responder2.responses.create(value: rand(4..7), question_id: 2)
responder2.responses.create(value: rand(4..7), question_id: 3)

responder3 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: false)
responder3.responses.create(value: rand(4..7), question_id: 1)
responder3.responses.create(value: rand(4..7), question_id: 2)
responder3.responses.create(value: rand(4..7), question_id: 3)

responder4 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "Senior", before: false)
responder4.responses.create(value: rand(4..7), question_id: 1)
responder4.responses.create(value: rand(4..7), question_id: 2)
responder4.responses.create(value: rand(4..7), question_id: 3)

responder5 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "Senior", before: false)
responder5.responses.create(value: rand(4..7), question_id: 1)
responder5.responses.create(value: rand(4..7), question_id: 2)
responder5.responses.create(value: rand(4..7), question_id: 3)

responder6 = allyship_session.responders.create(gender: "Female", age: ages.sample, position: "Manager", before: false)
responder6.responses.create(value: rand(4..7), question_id: 1)
responder6.responses.create(value: rand(4..7), question_id: 2)
responder6.responses.create(value: rand(4..7), question_id: 3)

responder7 = allyship_session.responders.create(gender: "Male", age: ages.sample, position: "Manager", before: false)
responder7.responses.create(value: rand(4..7), question_id: 1)
responder7.responses.create(value: rand(4..7), question_id: 2)
responder7.responses.create(value: rand(4..7), question_id: 3)

13.times.map { junior_responder = allyship_session.responders.create(gender: genders.sample, age: ages.sample, position: "Junior", before: false)
junior_responder.responses.create(value: rand(4..7), question_id: 1)
junior_responder.responses.create(value: rand(4..7), question_id: 2)
junior_responder.responses.create(value: rand(4..7), question_id: 3)}

# difficult conversations responders before
responder1 = difficult_conversations_session.responders.create(gender: "Female", age: ages.sample, position: "C-Level", before: true)
responder1.responses.create(value: rand(1..5), question_id: 1)
responder1.responses.create(value: rand(1..5), question_id: 2)
responder1.responses.create(value: rand(1..5), question_id: 3)

responder2 = difficult_conversations_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: true)
responder2.responses.create(value: rand(1..5), question_id: 1)
responder2.responses.create(value: rand(1..5), question_id: 2)
responder2.responses.create(value: rand(1..5), question_id: 3)

responder3 = difficult_conversations_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: true)
responder3.responses.create(value: rand(1..5), question_id: 1)
responder3.responses.create(value: rand(1..5), question_id: 2)
responder3.responses.create(value: rand(1..5), question_id: 3)

responder4 = difficult_conversations_session.responders.create(gender: "Male", age: ages.sample, position: "Senior", before: true)
responder4.responses.create(value: rand(1..5), question_id: 1)
responder4.responses.create(value: rand(1..5), question_id: 2)
responder4.responses.create(value: rand(1..5), question_id: 3)

responder5 = difficult_conversations_session.responders.create(gender: "Female", age: ages.sample, position: "Senior", before: true)
responder5.responses.create(value: rand(1..5), question_id: 1)
responder5.responses.create(value: rand(1..5), question_id: 2)
responder5.responses.create(value: rand(1..5), question_id: 3)

responder6 = difficult_conversations_session.responders.create(gender: "Female", age: ages.sample, position: "Manager", before: true)
responder6.responses.create(value: rand(1..5), question_id: 1)
responder6.responses.create(value: rand(1..5), question_id: 2)
responder6.responses.create(value: rand(1..5), question_id: 3)

responder7 = difficult_conversations_session.responders.create(gender: "Male", age: ages.sample, position: "Manager", before: true)
responder7.responses.create(value: rand(1..5), question_id: 1)
responder7.responses.create(value: rand(1..5), question_id: 2)
responder7.responses.create(value: rand(1..5), question_id: 3)

13.times.map { junior_responder = difficult_conversations_session.responders.create(gender: genders.sample, age: ages.sample, position: "Junior", before: true)
  junior_responder.responses.create(value: rand(1..5), question_id: 1)
  junior_responder.responses.create(value: rand(1..5), question_id: 2)
  junior_responder.responses.create(value: rand(1..5), question_id: 3)}

# difficult conversations responders after

responder_1 = difficult_conversations_session.responders.create(gender: "Female", age: ages.sample, position: "C-Level", before: false)
responder_1.responses.create(value: rand(4..7), question_id: 1)
responder_1.responses.create(value: rand(4..7), question_id: 2)
responder_1.responses.create(value: rand(4..7), question_id: 3)

responder_2 = difficult_conversations_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: false)
responder_2.responses.create(value: rand(4..7), question_id: 1)
responder_2.responses.create(value: rand(4..7), question_id: 2)
responder_2.responses.create(value: rand(4..7), question_id: 3)

responder_3 = difficult_conversations_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: false)
responder_3.responses.create(value: rand(4..7), question_id: 1)
responder_3.responses.create(value: rand(4..7), question_id: 2)
responder_3.responses.create(value: rand(4..7), question_id: 3)

responder_4 = difficult_conversations_session.responders.create(gender: "Male", age: ages.sample, position: "Senior", before: false)
responder_4.responses.create(value: rand(4..7), question_id: 1)
responder_4.responses.create(value: rand(4..7), question_id: 2)
responder_4.responses.create(value: rand(4..7), question_id: 3)

responder_5 = difficult_conversations_session.responders.create(gender: "Female", age: ages.sample, position: "Senior", before: false)
responder_5.responses.create(value: rand(4..7), question_id: 1)
responder_5.responses.create(value: rand(4..7), question_id: 2)
responder_5.responses.create(value: rand(4..7), question_id: 3)

responder_6 = difficult_conversations_session.responders.create(gender: "Female", age: ages.sample, position: "Manager", before: false)
responder_6.responses.create(value: rand(4..7), question_id: 1)
responder_6.responses.create(value: rand(4..7), question_id: 2)
responder_6.responses.create(value: rand(4..7), question_id: 3)

responder_7 = difficult_conversations_session.responders.create(gender: "Male", age: ages.sample, position: "Manager", before: false)
responder_7.responses.create(value: rand(4..7), question_id: 1)
responder_7.responses.create(value: rand(4..7), question_id: 2)
responder_7.responses.create(value: rand(4..7), question_id: 3)

13.times.map { junior_responder = difficult_conversations_session.responders.create(gender: genders.sample, age: ages.sample, position: "Junior", before: false)
junior_responder.responses.create(value: rand(4..7), question_id: 1)
junior_responder.responses.create(value: rand(4..7), question_id: 2)
junior_responder.responses.create(value: rand(4..7), question_id: 3)}

# inner critic session responders before

responder1 = inner_critic_session.responders.create(gender: "Female", age: ages.sample, position: "C-Level", before: true)
responder1.responses.create(value: rand(1..5), question_id: 1)
responder1.responses.create(value: rand(1..5), question_id: 2)
responder1.responses.create(value: rand(1..5), question_id: 3)

responder2 = inner_critic_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: true)
responder2.responses.create(value: rand(1..5), question_id: 1)
responder2.responses.create(value: rand(1..5), question_id: 2)
responder2.responses.create(value: rand(1..5), question_id: 3)

responder3 = inner_critic_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: true)
responder3.responses.create(value: rand(1..5), question_id: 1)
responder3.responses.create(value: rand(1..5), question_id: 2)
responder3.responses.create(value: rand(1..5), question_id: 3)

responder4 = inner_critic_session.responders.create(gender: "Male", age: ages.sample, position: "Senior", before: true)
responder4.responses.create(value: rand(1..5), question_id: 1)
responder4.responses.create(value: rand(1..5), question_id: 2)
responder4.responses.create(value: rand(1..5), question_id: 3)

responder5 = inner_critic_session.responders.create(gender: "Female", age: ages.sample, position: "Senior", before: true)
responder5.responses.create(value: rand(1..5), question_id: 1)
responder5.responses.create(value: rand(1..5), question_id: 2)
responder5.responses.create(value: rand(1..5), question_id: 3)

responder6 = inner_critic_session.responders.create(gender: "Female", age: ages.sample, position: "Manager", before: true)
responder6.responses.create(value: rand(1..5), question_id: 1)
responder6.responses.create(value: rand(1..5), question_id: 2)
responder6.responses.create(value: rand(1..5), question_id: 3)

responder7 = inner_critic_session.responders.create(gender: "Male", age: ages.sample, position: "Manager", before: true)
responder7.responses.create(value: rand(1..5), question_id: 1)
responder7.responses.create(value: rand(1..5), question_id: 2)
responder7.responses.create(value: rand(1..5), question_id: 3)

13.times.map { junior_responder = inner_critic_session.responders.create(gender: genders.sample, age: ages.sample, position: "Junior", before: true)
junior_responder.responses.create(value: rand(1..5), question_id: 1)
junior_responder.responses.create(value: rand(1..5), question_id: 2)
junior_responder.responses.create(value: rand(1..5), question_id: 3)}

# inner critic session responders after

responder_1 = inner_critic_session.responders.create(gender: "Female", age: ages.sample, position: "C-Level", before: false)
responder_1.responses.create(value: rand(4..7), question_id: 1)
responder_1.responses.create(value: rand(4..7), question_id: 2)
responder_1.responses.create(value: rand(4..7), question_id: 3)

responder_2 = inner_critic_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: false)
responder_2.responses.create(value: rand(4..7), question_id: 1)
responder_2.responses.create(value: rand(4..7), question_id: 2)
responder_2.responses.create(value: rand(4..7), question_id: 3)

responder_3 = inner_critic_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: false)
responder_3.responses.create(value: rand(4..7), question_id: 1)
responder_3.responses.create(value: rand(4..7), question_id: 2)
responder_3.responses.create(value: rand(4..7), question_id: 3)

responder_4 = inner_critic_session.responders.create(gender: "Male", age: ages.sample, position: "Senior", before: false)
responder_4.responses.create(value: rand(4..7), question_id: 1)
responder_4.responses.create(value: rand(4..7), question_id: 2)
responder_4.responses.create(value: rand(4..7), question_id: 3)

responder_5 = inner_critic_session.responders.create(gender: "Female", age: ages.sample, position: "Senior", before: false)
responder_5.responses.create(value: rand(4..7), question_id: 1)
responder_5.responses.create(value: rand(4..7), question_id: 2)
responder_5.responses.create(value: rand(4..7), question_id: 3)

responder_6 = inner_critic_session.responders.create(gender: "Female", age: ages.sample, position: "Manager", before: false)
responder_6.responses.create(value: rand(4..7), question_id: 1)
responder_6.responses.create(value: rand(4..7), question_id: 2)
responder_6.responses.create(value: rand(4..7), question_id: 3)

responder_7 = inner_critic_session.responders.create(gender: "Male", age: ages.sample, position: "Manager", before: false)
responder_7.responses.create(value: rand(4..7), question_id: 1)
responder_7.responses.create(value: rand(4..7), question_id: 2)
responder_7.responses.create(value: rand(4..7), question_id: 3)

13.times.map { junior_responder = inner_critic_session.responders.create(gender: genders.sample, age: ages.sample, position: "Junior", before: false)
junior_responder.responses.create(value: rand(4..7), question_id: 1)
junior_responder.responses.create(value: rand(4..7), question_id: 2)
junior_responder.responses.create(value: rand(4..7), question_id: 3)}

# teamwork session responders true

responder1 = teamwork_session.responders.create(gender: "Female", age: ages.sample, position: "C-Level", before: true)
responder1.responses.create(value: rand(1..5), question_id: 1)
responder1.responses.create(value: rand(1..5), question_id: 2)
responder1.responses.create(value: rand(1..5), question_id: 3)

responder2 = teamwork_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: true)
responder2.responses.create(value: rand(1..5), question_id: 1)
responder2.responses.create(value: rand(1..5), question_id: 2)
responder2.responses.create(value: rand(1..5), question_id: 3)

responder3 = teamwork_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: true)
responder3.responses.create(value: rand(1..5), question_id: 1)
responder3.responses.create(value: rand(1..5), question_id: 2)
responder3.responses.create(value: rand(1..5), question_id: 3)

responder4 = teamwork_session.responders.create(gender: "Male", age: ages.sample, position: "Senior", before: true)
responder4.responses.create(value: rand(1..5), question_id: 1)
responder4.responses.create(value: rand(1..5), question_id: 2)
responder4.responses.create(value: rand(1..5), question_id: 3)

responder5 = teamwork_session.responders.create(gender: "Female", age: ages.sample, position: "Senior", before: true)
responder5.responses.create(value: rand(1..5), question_id: 1)
responder5.responses.create(value: rand(1..5), question_id: 2)
responder5.responses.create(value: rand(1..5), question_id: 3)

responder6 = teamwork_session.responders.create(gender: "Female", age: ages.sample, position: "Manager", before: true)
responder6.responses.create(value: rand(1..5), question_id: 1)
responder6.responses.create(value: rand(1..5), question_id: 2)
responder6.responses.create(value: rand(1..5), question_id: 3)

responder7 = teamwork_session.responders.create(gender: "Male", age: ages.sample, position: "Manager", before: true)
responder7.responses.create(value: rand(1..5), question_id: 1)
responder7.responses.create(value: rand(1..5), question_id: 2)
responder7.responses.create(value: rand(1..5), question_id: 3)

13.times.map { junior_responder = teamwork_session.responders.create(gender: genders.sample, age: ages.sample, position: "Junior", before: true)
junior_responder.responses.create(value: rand(1..5), question_id: 1)
junior_responder.responses.create(value: rand(1..5), question_id: 2)
junior_responder.responses.create(value: rand(1..5), question_id: 3)}

# teamwork sessions responders after

responder_1 = teamwork_session.responders.create(gender: "Female", age: ages.sample, position: "C-Level", before: false)
responder_1.responses.create(value: rand(4..7), question_id: 1)
responder_1.responses.create(value: rand(4..7), question_id: 2)
responder_1.responses.create(value: rand(4..7), question_id: 3)

responder_2 = teamwork_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: false)
responder_2.responses.create(value: rand(4..7), question_id: 1)
responder_2.responses.create(value: rand(4..7), question_id: 2)
responder_2.responses.create(value: rand(4..7), question_id: 3)

responder_3 = teamwork_session.responders.create(gender: "Male", age: ages.sample, position: "C-Level", before: false)
responder_3.responses.create(value: rand(4..7), question_id: 1)
responder_3.responses.create(value: rand(4..7), question_id: 2)
responder_3.responses.create(value: rand(4..7), question_id: 3)

responder_4 = teamwork_session.responders.create(gender: "Male", age: ages.sample, position: "Senior", before: false)
responder_4.responses.create(value: rand(4..7), question_id: 1)
responder_4.responses.create(value: rand(4..7), question_id: 2)
responder_4.responses.create(value: rand(4..7), question_id: 3)

responder_5 = teamwork_session.responders.create(gender: "Female", age: ages.sample, position: "Senior", before: false)
responder_5.responses.create(value: rand(4..7), question_id: 1)
responder_5.responses.create(value: rand(4..7), question_id: 2)
responder_5.responses.create(value: rand(4..7), question_id: 3)

responder_6 = teamwork_session.responders.create(gender: "Female", age: ages.sample, position: "Manager", before: false)
responder_6.responses.create(value: rand(4..7), question_id: 1)
responder_6.responses.create(value: rand(4..7), question_id: 2)
responder_6.responses.create(value: rand(4..7), question_id: 3)

responder_7 = teamwork_session.responders.create(gender: "Male", age: ages.sample, position: "Manager", before: false)
responder_7.responses.create(value: rand(4..7), question_id: 1)
responder_7.responses.create(value: rand(4..7), question_id: 2)
responder_7.responses.create(value: rand(4..7), question_id: 3)

13.times.map { junior_responder = teamwork_session.responders.create(gender: genders.sample, age: ages.sample, position: "Junior", before: false)
junior_responder.responses.create(value: rand(4..7), question_id: 1)
junior_responder.responses.create(value: rand(4..7), question_id: 2)
junior_responder.responses.create(value: rand(4..7), question_id: 3)}
