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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130810214807) do

  create_table "boards", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clues", :force => true do |t|
    t.string   "prompt"
    t.string   "response"
    t.string   "passage"
    t.integer  "difficulty"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scores", :force => true do |t|
    t.integer  "value"
    t.integer  "user_id"
    t.integer  "board_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "scores", ["board_id"], :name => "index_scores_on_board_id"
  add_index "scores", ["user_id"], :name => "index_scores_on_user_id"

end