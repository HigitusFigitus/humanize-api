Company.destroy_all
Session.destroy_all
Responder.destroy_all
Response.destroy_all
Question.destroy_all

def get_id(objects_with_ids)
  objects_with_ids.map { | object_with_id | object_with_id.id }
end

company_1 = Company.create(name: "DevBootcamp")
company_2 = Company.create(name: "ViewSonic")
sessions = []
responders = []
questions = []

5.times do
  questions <<
  Question.create(
    body: [
    "How welcome and supported do you feel in the work environment?",
    "Did you feel closer to your coworkers after the Engineering Empathy Session of last week?",
    "Are you personally benefiting from the the Engineering Empathy Sessions?",
    "Is your team benefiting from the the Engineering Empathy Sessions?"
    ].sample
    )
end

5.times do
  sessions <<
  Session.create(
    # date format: mm/dd/yy
    date: [
    Date.new(01, 01, 1970),
    Date.new(01, 02, 1970),
    Date.new(01, 03, 1970),
    Date.new(01, 04, 1970),
    Date.new(01, 05, 1970)
    ].sample,
    topic: [
      "Curiosity",
      "Inner Critic",
      "Emotional Awareness",
      "Difficult Conversations",
      "Allyship"
      ].sample,
    content: [
      "Emotional intelligence can be defined as the ability to monitor one's own and other people's emotions, to discriminate between different emotions and label them appropriately and to use emotional information to guide thinking and behavior. Emotional intelligence also reflects abilities to join intelligence, empathy and emotions to enhance thought and understanding of interpersonal dynamics.",
      "Emotional intelligence is the capability of individuals to recognize their own, and other people's emotions, to discriminate between different feelings and label them appropriately, to use emotional information to guide thinking and behavior, and to manage and/or adjust emotions to adapt environments or achieve one's goals."
      ].sample,
    company_id: [company_1.id, company_2.id].sample
    )
end

5.times do
  responders <<
  Responder.create(
    age: [20, 23, 25, 30, 36, 35, 40, 42 45, 50, 51, 55, 60, 65, 70].sample,
    culture: ["Culture One",
      "Culture Two",
      "Culture Three",
      "Culture Four",
      "Culture Five"].sample,
    gender: [
      "Agender",
      "Female",
      "Male",
      "Bigender",
      "Gender fluid",
      "Genderflux",
      "Transgender"
      ].sample,
    presurvey: [false, true].sample,
    session_id: get_id(sessions).sample
    )
end

5.times do
  Response.create(
    value: [1, 2, 3, 4, 5].sample,
    responder_id: get_id(responders).sample,
    question_id: get_id(questions).sample
    )
end
