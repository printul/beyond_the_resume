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


ActiveRecord::Schema.define(version: 20170605180345) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "professions", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_professions_on_user_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.integer  "profession_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["profession_id"], name: "index_skills_on_profession_id", using: :btree
  create_table "businesses", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "address"
    t.string   "phone_number"
    t.string   "email"
    t.string   "industry"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_businesses_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name",                             null: false
    t.string   "last_name",                              null: false
    t.string   "phone_number"
    t.string   "resume"
    t.boolean  "business?",              default: false
    t.boolean  "searchable?",            default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "professions", "users"
  add_foreign_key "skills", "professions"

  create_table "videos", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "url",         null: false
    t.text     "description"
    t.integer  "user_id"
    t.integer  "business_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["business_id"], name: "index_videos_on_business_id", using: :btree
    t.index ["user_id"], name: "index_videos_on_user_id", using: :btree
  end

  add_foreign_key "businesses", "users"
  add_foreign_key "videos", "businesses"
  add_foreign_key "videos", "users"
end
