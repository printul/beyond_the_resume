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

ActiveRecord::Schema.define(version: 20170614184219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "applications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "video_id"
    t.integer  "posting_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.text     "description"
    t.index ["posting_id"], name: "index_applications_on_posting_id", using: :btree
    t.index ["user_id"], name: "index_applications_on_user_id", using: :btree
    t.index ["video_id"], name: "index_applications_on_video_id", using: :btree
  end

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "email"
    t.string   "industry"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "city"
    t.string   "zipcode"
    t.string   "logo"
    t.index ["user_id"], name: "index_businesses_on_user_id", using: :btree
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_identities_on_user_id", using: :btree
  end

  create_table "postings", force: :cascade do |t|
    t.text     "description"
    t.integer  "business_id"
    t.integer  "video_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "title"
    t.boolean  "is_active?",  default: true
    t.integer  "views",       default: 0
    t.string   "vid_token"
    t.index ["business_id"], name: "index_postings_on_business_id", using: :btree
    t.index ["video_id"], name: "index_postings_on_video_id", using: :btree
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "resume"
    t.boolean  "is_business?",           default: false
    t.boolean  "is_searchable?",         default: false
    t.boolean  "admin",                  default: false, null: false
    t.string   "photo"
    t.string   "profession"
    t.string   "skill1"
    t.string   "skill2"
    t.string   "skill3"
    t.string   "skill4"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.string   "videoable_type"
    t.integer  "videoable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "image_url"
    t.index ["videoable_type", "videoable_id"], name: "index_videos_on_videoable_type_and_videoable_id", using: :btree
  end

  add_foreign_key "applications", "postings"
  add_foreign_key "applications", "users"
  add_foreign_key "applications", "videos"
  add_foreign_key "businesses", "users"
  add_foreign_key "identities", "users"
  add_foreign_key "postings", "businesses"
  add_foreign_key "postings", "videos"
end
