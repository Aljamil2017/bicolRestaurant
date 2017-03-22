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

ActiveRecord::Schema.define(version: 20170322063130) do

  create_table "customers", force: :cascade do |t|
    t.string   "c_username"
    t.string   "c_password"
    t.string   "c_firstname"
    t.string   "c_middlename"
    t.string   "c_lastname"
    t.string   "c_address"
    t.string   "c_contact"
    t.string   "c_email"
    t.string   "c_longitude"
    t.string   "c_latitude"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string   "dish_name"
    t.string   "dish_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "menutype_id"
  end

  add_index "dishes", ["menutype_id"], name: "index_dishes_on_menutype_id"

  create_table "menutypes", force: :cascade do |t|
    t.string   "menu_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "restaurant_id"
  end

  add_index "menutypes", ["restaurant_id"], name: "index_menutypes_on_restaurant_id"

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true

  create_table "restaurants", force: :cascade do |t|
    t.string   "r_username"
    t.string   "r_password"
    t.string   "restaurant_name"
    t.string   "r_contact"
    t.string   "r_address"
    t.string   "r_style"
    t.string   "r_email"
    t.string   "r_start_time"
    t.string   "r_close_time"
    t.string   "r_longitude"
    t.string   "r_latitude"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "message"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "customer_id"
    t.integer  "restaurant_id"
  end

  add_index "reviews", ["customer_id"], name: "index_reviews_on_customer_id"
  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
