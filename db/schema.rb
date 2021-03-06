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

ActiveRecord::Schema.define(version: 20150805170407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "end_user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
  add_index "comments", ["end_user_id"], name: "index_comments_on_end_user_id", using: :btree

  create_table "composers", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "category"
    t.text     "bio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "end_user_id"
  end

  create_table "end_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "end_users", ["email"], name: "index_end_users_on_email", unique: true, using: :btree
  add_index "end_users", ["reset_password_token"], name: "index_end_users_on_reset_password_token", unique: true, using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "region"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "end_user_id"
  end

  create_table "poems", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "subtitle"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "medialink_file_name"
    t.string   "medialink_content_type"
    t.integer  "medialink_file_size"
    t.datetime "medialink_updated_at"
    t.integer  "end_user_id"
    t.integer  "composer_id"
    t.integer  "place_id"
  end

  add_index "poems", ["composer_id"], name: "index_poems_on_composer_id", using: :btree
  add_index "poems", ["place_id"], name: "index_poems_on_place_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "lyrics"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "medialink_file_name"
    t.string   "medialink_content_type"
    t.integer  "medialink_file_size"
    t.datetime "medialink_updated_at"
    t.integer  "end_user_id"
    t.integer  "composer_id"
    t.integer  "place_id"
  end

  add_index "songs", ["composer_id"], name: "index_songs_on_composer_id", using: :btree
  add_index "songs", ["place_id"], name: "index_songs_on_place_id", using: :btree

  add_foreign_key "comments", "end_users"
  add_foreign_key "poems", "composers"
  add_foreign_key "poems", "places"
  add_foreign_key "songs", "composers"
  add_foreign_key "songs", "places"
end
