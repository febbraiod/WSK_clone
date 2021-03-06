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

ActiveRecord::Schema.define(version: 20161118191208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.integer  "volatility_index"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "gameboards", force: :cascade do |t|
    t.integer  "week",            default: 1
    t.decimal  "ATNT",            default: [],              array: true
    t.decimal  "Boing",           default: [],              array: true
    t.decimal  "Xearox",          default: [],              array: true
    t.decimal  "YBM",             default: [],              array: true
    t.decimal  "Yapple",          default: [],              array: true
    t.decimal  "Bethleham",       default: [],              array: true
    t.decimal  "Chryer",          default: [],              array: true
    t.decimal  "PanAm",           default: [],              array: true
    t.decimal  "Strayhound",      default: [],              array: true
    t.decimal  "Teradying",       default: [],              array: true
    t.decimal  "AmericanDepress", default: [],              array: true
    t.decimal  "Exconrail",       default: [],              array: true
    t.decimal  "FiredmansFund",   default: [],              array: true
    t.decimal  "Reebucks",        default: [],              array: true
    t.decimal  "CharlesSchlob",   default: [],              array: true
    t.decimal  "Carnivore",       default: [],              array: true
    t.decimal  "Centipede",       default: [],              array: true
    t.decimal  "Coughman",        default: [],              array: true
    t.decimal  "Marrinot",        default: [],              array: true
    t.decimal  "Rattel",          default: [],              array: true
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.decimal  "bank_account", precision: 10, scale: 2, default: 500000.0
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string   "company_name"
    t.float    "starting_value"
    t.float    "min_value"
    t.float    "max_value"
    t.integer  "category_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
