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

ActiveRecord::Schema.define(version: 20170723111450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dislikes", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "medium_id", null: false
    t.index ["medium_id", "user_id"], name: "index_dislikes_on_medium_id_and_user_id"
    t.index ["user_id", "medium_id"], name: "index_dislikes_on_user_id_and_medium_id"
  end

  create_table "likes", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "medium_id", null: false
    t.index ["medium_id", "user_id"], name: "index_likes_on_medium_id_and_user_id"
    t.index ["user_id", "medium_id"], name: "index_likes_on_user_id_and_medium_id"
  end

  create_table "media", force: :cascade do |t|
    t.integer "tmdb_id"
    t.string "name"
    t.string "overview"
    t.string "poster_path"
    t.string "first_air_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_media_on_user_id"
  end

  create_table "saves", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "medium_id", null: false
    t.index ["medium_id", "user_id"], name: "index_saves_on_medium_id_and_user_id"
    t.index ["user_id", "medium_id"], name: "index_saves_on_user_id_and_medium_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "firstname"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "media", "users"
end
