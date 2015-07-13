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

ActiveRecord::Schema.define(version: 20150713145935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "composers", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "composer_type"
    t.text     "bio"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "region"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "end_user_id"
  end

  create_table "poems", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.text     "subtitle"
    t.integer  "place_id"
    t.integer  "composer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "end_user_id"
  end

  add_index "poems", ["composer_id"], name: "index_poems_on_composer_id", using: :btree
  add_index "poems", ["place_id"], name: "index_poems_on_place_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.text     "lyrics"
    t.integer  "place_id"
    t.integer  "composer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "end_user_id"
  end

  add_index "songs", ["composer_id"], name: "index_songs_on_composer_id", using: :btree
  add_index "songs", ["place_id"], name: "index_songs_on_place_id", using: :btree

end
