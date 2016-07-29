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

ActiveRecord::Schema.define(version: 20160728095905) do

  create_table "products", force: :cascade do |t|
    t.text     "product_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "users_id"
    t.integer  "products_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["products_id"], name: "index_reviews_on_products_id"
    t.index ["users_id"], name: "index_reviews_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.text     "address"
    t.text     "password"
    t.integer  "credit_card_no"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
