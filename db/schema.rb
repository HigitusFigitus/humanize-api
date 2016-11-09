# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161106003522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responders", force: :cascade do |t|
    t.integer  "age"
    t.string   "position"
    t.string   "gender"
    t.boolean  "before"
    t.integer  "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_responders_on_session_id", using: :btree
  end

  create_table "responses", force: :cascade do |t|
    t.integer  "value"
    t.integer  "responder_id"
    t.integer  "question_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["question_id"], name: "index_responses_on_question_id", using: :btree
    t.index ["responder_id"], name: "index_responses_on_responder_id", using: :btree
  end

  create_table "sessions", force: :cascade do |t|
    t.date     "date"
    t.string   "topic"
    t.string   "content"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_sessions_on_company_id", using: :btree
  end

  add_foreign_key "responders", "sessions"
  add_foreign_key "responses", "questions"
  add_foreign_key "responses", "responders"
  add_foreign_key "sessions", "companies"
end
