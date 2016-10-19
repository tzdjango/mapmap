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

ActiveRecord::Schema.define(version: 20161019004221) do

  create_table "capacities", force: :cascade do |t|
    t.integer  "repairshop_id"
    t.datetime "starttime"
    t.datetime "endtime"
    t.integer  "totalcapacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "repairshop_id"
    t.text     "service"
    t.text     "feedbacktext"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gasprices", force: :cascade do |t|
    t.float    "price"
    t.text     "quality"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gasstation_id"
  end

  create_table "gasstations", force: :cascade do |t|
    t.text   "chain"
    t.text   "name"
    t.text   "streetaddress"
    t.text   "zipcode"
    t.text   "city"
    t.text   "country"
    t.string "email"
    t.float  "xcoord"
    t.float  "ycoord"
  end

  create_table "messageproductids", force: :cascade do |t|
    t.integer  "message_id"
    t.integer  "repairshopproduct_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "messagetext"
    t.text     "imageurl"
    t.integer  "kilometer"
    t.date     "suggesteddate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metamessages", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "direction"
    t.text     "uuid"
    t.text     "veh_vincode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "price_id"
    t.float    "offerprice"
    t.float    "offerpercentage"
    t.datetime "offerstart"
    t.datetime "offerend"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ownershiphistories", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "vehicle_id"
    t.text     "vin"
    t.datetime "startdate"
    t.datetime "enddate"
    t.text     "vehiclename"
    t.text     "imageurl"
    t.boolean  "obsolete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "repairshop_id"
    t.integer  "repairshopproduct_id"
    t.float    "realprice"
    t.integer  "autoresponse"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regnumhistories", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.text     "vin"
    t.text     "regnum"
    t.text     "country"
    t.date     "startdate"
    t.date     "enddate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repairshopbalances", force: :cascade do |t|
    t.integer  "repairshop_id"
    t.float    "credit"
    t.float    "debit"
    t.text     "action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repairshopcontactinfos", force: :cascade do |t|
    t.integer  "repairshop_id"
    t.text     "streetaddress"
    t.text     "zipcode"
    t.text     "city"
    t.text     "fixedtelephone"
    t.text     "mobiletelephone"
    t.float    "xcoord"
    t.float    "ycoord"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repairshopproducts", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repairshops", force: :cascade do |t|
    t.text     "name"
    t.text     "companyid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repairshopwebinfos", force: :cascade do |t|
    t.integer  "repairshop_id"
    t.text     "webservice"
    t.text     "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "repairshop_id"
    t.integer  "repairshopproduct_id"
    t.integer  "clientauth_id"
    t.datetime "starttime"
    t.datetime "endtime"
    t.text     "regnum"
    t.integer  "client_id"
    t.text     "message"
    t.text     "imagelink"
    t.text     "username"
    t.text     "usertel"
    t.text     "useremail"
    t.text     "statusrepairshop"
    t.text     "statusclient"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.integer "user_id"
    t.text    "name"
    t.text    "description"
  end

  create_table "servicehistories", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.text     "vin"
    t.text     "servicedby"
    t.text     "serviceaction"
    t.date     "servicedate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveyconsumerdata", force: :cascade do |t|
    t.integer  "surveyconsumer_id"
    t.float    "xcoord"
    t.float    "ycoord"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveyconsumers", force: :cascade do |t|
    t.text "email"
    t.text "regnum"
    t.text "deviceinfo"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.boolean  "active"
    t.integer  "logincount"
    t.datetime "confirmedat"
    t.datetime "lastlogin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: :cascade do |t|
    t.text     "vincode"
    t.text     "mark"
    t.text     "model"
    t.text     "year"
    t.text     "fuel"
    t.text     "regnum"
    t.integer  "kw"
    t.integer  "cylcap"
    t.date     "regdate"
    t.boolean  "obsolete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
