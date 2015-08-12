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

ActiveRecord::Schema.define(version: 20150810134717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "email",                        default: "", null: false
    t.string   "encrypted_password",           default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "company_name"
    t.string   "legal_name"
    t.string   "dba"
    t.string   "billing_address_line_1"
    t.string   "billing_address_line_2"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.string   "billing_phone_number"
    t.string   "type_of_organization"
    t.string   "bank_name"
    t.string   "bank_account_number"
    t.string   "bank_routing_number"
    t.string   "tax_id"
    t.string   "info_website"
    t.text     "info_company_description"
    t.text     "info_hours"
    t.string   "info_customer_service_phone"
    t.string   "info_accounts_payable_person"
    t.string   "info_marketing_manager"
    t.string   "owner_direct_name"
    t.string   "owner_direct_email"
    t.string   "owner_direct_phone"
  end

  add_index "brands", ["email"], name: "index_brands_on_email", unique: true, using: :btree
  add_index "brands", ["reset_password_token"], name: "index_brands_on_reset_password_token", unique: true, using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "brand_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "sku"
  end

  add_index "products", ["brand_id"], name: "index_products_on_brand_id", using: :btree

  add_foreign_key "products", "brands"
end
