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

ActiveRecord::Schema.define(version: 20181219085205) do

  create_table "currencies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "currency_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "markets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "base_currency_id"
    t.integer "quoted_currency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "market_id"
    t.float "price", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
