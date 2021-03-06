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

ActiveRecord::Schema.define(version: 20160216220012) do

  create_table "deliveries", force: :cascade do |t|
    t.string   "name"
    t.string   "deliveryaddress"
    t.integer  "deliverytime"
    t.string   "notes"
    t.integer  "order_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "deliveries", ["order_id"], name: "index_deliveries_on_order_id"

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.string   "name"
    t.string   "pickup"
    t.datetime "pickuptime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
