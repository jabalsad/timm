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

ActiveRecord::Schema.define(version: 20150207172354) do

  create_table "agents", force: :cascade do |t|
    t.string   "name"
    t.integer  "download_id"
    t.datetime "last_checkin_time"
    t.string   "status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "agents", ["download_id"], name: "index_agents_on_download_id"

  create_table "downloads", force: :cascade do |t|
    t.string   "status"
    t.integer  "bytes_downloaded"
    t.integer  "priority"
    t.integer  "movie_id"
    t.integer  "agent_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "downloads", ["agent_id"], name: "index_downloads_on_agent_id"
  add_index "downloads", ["movie_id"], name: "index_downloads_on_movie_id"

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.string   "path"
    t.string   "imdb"
    t.integer  "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
