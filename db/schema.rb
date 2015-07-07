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

ActiveRecord::Schema.define(version: 20150707002201) do

  create_table "creditcards", force: true do |t|
    t.string   "creditno",    limit: 96,             null: false
    t.integer  "customer_id",                        null: false
    t.integer  "version",                default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "creditcards", ["customer_id"], name: "index_creditcards_on_customer_id"

  create_table "customers", force: true do |t|
    t.string   "customer_name",   limit: 30,              null: false
    t.string   "address",                                 null: false
    t.string   "tel",             limit: 11,              null: false
    t.string   "hashed_password", limit: 128,             null: false
    t.string   "email",           limit: 256,             null: false
    t.integer  "version",                     default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true

  create_table "histories", force: true do |t|
    t.integer  "customer_id",   null: false
    t.integer  "product_id",    null: false
    t.integer  "creditcard_id"
    t.integer  "amount",        null: false
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "histories", ["creditcard_id"], name: "index_histories_on_creditcard_id"
  add_index "histories", ["customer_id"], name: "index_histories_on_customer_id"
  add_index "histories", ["product_id"], name: "index_histories_on_product_id"

  create_table "product_images", force: true do |t|
    t.integer  "product_id",             null: false
    t.binary   "pic",                    null: false
    t.integer  "version",    default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_images", ["product_id"], name: "index_product_images_on_product_id"

  create_table "products", force: true do |t|
    t.string   "product_code", limit: 10,                                      null: false
    t.string   "product_name", limit: 50
    t.decimal  "price",                    precision: 6, scale: 2
    t.string   "detail",       limit: 200
    t.integer  "version",                                          default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["product_code"], name: "index_products_on_product_code", unique: true

  create_table "stocks", force: true do |t|
    t.integer  "stock",                  null: false
    t.integer  "product_id",             null: false
    t.integer  "version",    default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stocks", ["product_id"], name: "index_stocks_on_product_id"

end
