# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20210701214440) do

  create_table "anschreibens", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "stadt"
    t.string   "bewerbungals"
    t.text     "kompetenzen"
    t.string   "firmaname"
    t.string   "firmaaddress"
    t.string   "firmastadt"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string   "date_from"
    t.string   "date_to"
    t.string   "level"
    t.text     "description"
    t.string   "place"
    t.integer  "resume_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "educations", ["resume_id"], name: "index_educations_on_resume_id"

  create_table "interests", force: :cascade do |t|
    t.text     "name"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "interests", ["resume_id"], name: "index_interests_on_resume_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "date_from"
    t.string   "date_to"
    t.string   "firm"
    t.string   "position"
    t.string   "place"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "jobs", ["resume_id"], name: "index_jobs_on_resume_id"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "level"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "languages", ["resume_id"], name: "index_languages_on_resume_id"

  create_table "projects", force: :cascade do |t|
    t.string   "date_from"
    t.string   "date_to"
    t.string   "client"
    t.text     "description"
    t.text     "technologies"
    t.string   "role"
    t.integer  "resume_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "projects", ["resume_id"], name: "index_projects_on_resume_id"

  create_table "resumes", force: :cascade do |t|
    t.string   "name"
    t.text     "general_info"
    t.string   "interests"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "section"
    t.string   "title"
    t.string   "percent"
    t.string   "color"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "skills", ["resume_id"], name: "index_skills_on_resume_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
