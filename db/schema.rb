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

ActiveRecord::Schema.define(version: 20130817213558) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "boards", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "difficulty"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_clues", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "clue_id"
  end

  add_index "categories_clues", ["category_id", "clue_id"], name: "index_categories_clues_on_category_id_and_clue_id"
  add_index "categories_clues", ["clue_id", "category_id"], name: "index_categories_clues_on_clue_id_and_category_id"

  create_table "categorysets", force: true do |t|
    t.integer  "category_id"
    t.integer  "board_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorysets", ["board_id"], name: "index_categorysets_on_board_id"
  add_index "categorysets", ["category_id"], name: "index_categorysets_on_category_id"

  create_table "clues", force: true do |t|
    t.string   "prompt"
    t.string   "response"
    t.string   "passage"
    t.integer  "difficulty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cluesets", force: true do |t|
    t.integer  "clue_id"
    t.integer  "board_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cluesets", ["board_id"], name: "index_cluesets_on_board_id"
  add_index "cluesets", ["clue_id"], name: "index_cluesets_on_clue_id"

  create_table "scores", force: true do |t|
    t.integer  "value"
    t.integer  "user_id"
    t.integer  "board_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scores", ["board_id"], name: "index_scores_on_board_id"
  add_index "scores", ["user_id"], name: "index_scores_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
