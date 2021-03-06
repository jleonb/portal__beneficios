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

ActiveRecord::Schema.define(version: 20160509104424) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agreements", force: :cascade do |t|
    t.string   "contract"
    t.string   "category"
    t.string   "banner"
    t.string   "name"
    t.text     "description"
    t.string   "img1"
    t.string   "img2"
    t.string   "img3"
    t.string   "img4"
    t.string   "img5"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.string   "url_map"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "contact"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
    t.string   "img1_file_name"
    t.string   "img1_content_type"
    t.integer  "img1_file_size"
    t.datetime "img1_updated_at"
    t.string   "img2_file_name"
    t.string   "img2_content_type"
    t.integer  "img2_file_size"
    t.datetime "img2_updated_at"
    t.string   "img3_file_name"
    t.string   "img3_content_type"
    t.integer  "img3_file_size"
    t.datetime "img3_updated_at"
    t.string   "img4_file_name"
    t.string   "img4_content_type"
    t.integer  "img4_file_size"
    t.datetime "img4_updated_at"
    t.string   "img5_file_name"
    t.string   "img5_content_type"
    t.integer  "img5_file_size"
    t.datetime "img5_updated_at"
    t.string   "logo"
  end

  create_table "nexus", force: :cascade do |t|
    t.string   "number"
    t.string   "agreement_contract"
    t.string   "user_contract"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "tops", force: :cascade do |t|
    t.string   "name"
    t.string   "banner"
    t.text     "description"
    t.string   "contact"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "contract"
    t.string   "nexus"
    t.string   "pid"
    t.string   "name"
    t.string   "phone"
    t.string   "company"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.string   "logo"
    t.string   "logotipo_file_name"
    t.string   "logotipo_content_type"
    t.integer  "logotipo_file_size"
    t.datetime "logotipo_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
