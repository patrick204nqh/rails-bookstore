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

ActiveRecord::Schema.define(version: 2020_12_07_081613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "erp_books", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "erp_carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "erp_line_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cart_id"
    t.bigint "order_id"
    t.bigint "book_id"
    t.integer "quantity", default: 1
    t.index ["book_id"], name: "index_erp_line_items_on_book_id"
    t.index ["cart_id"], name: "index_erp_line_items_on_cart_id"
    t.index ["order_id"], name: "index_erp_line_items_on_order_id"
  end

  create_table "erp_orders", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_erp_orders_on_user_id"
  end

  create_table "erp_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_erp_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_erp_users_on_reset_password_token", unique: true
  end

  add_foreign_key "erp_line_items", "erp_books", column: "book_id"
  add_foreign_key "erp_line_items", "erp_carts", column: "cart_id"
  add_foreign_key "erp_line_items", "erp_orders", column: "order_id"
  add_foreign_key "erp_orders", "erp_users", column: "user_id"
end
