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

ActiveRecord::Schema.define(version: 2019_12_02_112135) do

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "category"
    t.integer "size"
    t.string "condition", null: false
    t.string "shipping_charge", null: false
    t.string "shipping_how"
    t.string "shipping_place", null: false
    t.integer "shipping_date", null: false
    t.integer "price", null: false
    t.string "text", null: false
    t.text "image", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", default: "", null: false
    t.string "phone_number", null: false
    t.string "prefectures"
    t.string "city"
    t.string "address"
    t.string "postal_code"
    t.string "building_name"
    t.integer "birth_year"
    t.integer "birth_month"
    t.integer "birth_day"
    t.string "first_name"
    t.string "first_name_kana"
    t.string "last_name"
    t.string "last_name_kana"
    t.string "first_name_delivery"
    t.string "first_name_kana_delivery"
    t.string "last_name_delivery"
    t.string "last_name_kana_delivery"
    t.string "phone_number_delivery"
    t.string "exhibit_product"
    t.integer "exhibit_number"
    t.integer "points"
    t.integer "like"
    t.integer "earnings"
    t.integer "purchase_history_id"
    t.integer "sales_history_id"
    t.text "profile"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
