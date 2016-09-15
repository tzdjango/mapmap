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

ActiveRecord::Schema.define(version: 20160915122103) do

  create_table "clientaddresses", force: :cascade do |t|
    t.integer  "client_id"
    t.text     "streetaddress"
    t.text     "zipcode"
    t.text     "city"
    t.text     "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientauths", force: :cascade do |t|
    t.integer  "client_id"
    t.text     "username"
    t.text     "secret"
    t.text     "language"
    t.text     "registrationkey"
    t.datetime "registrationinitiated"
    t.datetime "registrationvalieduntil"
    t.datetime "registrationcompleted"
    t.text     "status"
    t.boolean  "isvalid"
    t.text     "apikey"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientcontactinfos", force: :cascade do |t|
    t.integer  "client_id"
    t.text     "service"
    t.text     "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: :cascade do |t|
    t.text     "firstname"
    t.text     "lastname"
    t.text     "gender"
    t.date     "dob"
    t.text     "nickname"
    t.text     "userandrpushregid"
    t.text     "useriospushtoken"
    t.text     "imageurl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messagesmeta", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "direction"
    t.text     "uuid"
    t.text     "veh_vincode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ownershiphistories", force: :cascade do |t|
    t.integer  "client_id"
    t.text     "vin"
    t.datetime "startdate"
    t.datetime "enddate"
    t.text     "vehiclename"
    t.text     "imageurl"
    t.boolean  "obsolete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
