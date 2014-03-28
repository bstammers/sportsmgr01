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

ActiveRecord::Schema.define(version: 20140328001609) do

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.boolean  "pointsflag"
    t.boolean  "setsflag"
    t.boolean  "mvpflag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "competitions", ["name"], name: "index_competitions_on_name", unique: true

  create_table "divisions", force: true do |t|
    t.string   "divname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "competition_id"
  end

  add_index "divisions", ["competition_id"], name: "index_divisions_on_competition_id"
  add_index "divisions", ["divname"], name: "index_divisions_on_divname", unique: true

  create_table "players", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone"
    t.string   "avatar"
    t.boolean  "adminflag"
    t.boolean  "mgrflag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "players", ["email"], name: "index_players_on_email", unique: true
  add_index "players", ["remember_token"], name: "index_players_on_remember_token"
  add_index "players", ["username"], name: "index_players_on_username", unique: true

  create_table "teams", force: true do |t|
    t.string   "teamname"
    t.integer  "competition_id"
    t.integer  "division_id"
    t.string   "teammgr"
    t.integer  "played"
    t.integer  "won"
    t.integer  "lost"
    t.integer  "tied"
    t.integer  "sets_won"
    t.integer  "sets_lost"
    t.integer  "points_for"
    t.integer  "points_against"
    t.decimal  "sets_percent"
    t.decimal  "points_percent"
    t.decimal  "comp_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["competition_id"], name: "index_teams_on_competition_id"
  add_index "teams", ["division_id"], name: "index_teams_on_division_id"

end
