# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_02_082000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "author_lists", force: :cascade do |t|
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_author_lists_on_author_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "first_name", limit: 40
    t.string "surname", limit: 40
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "oeuvre_id"
  end

  create_table "book_identifiers", force: :cascade do |t|
    t.bigint "ISBN_10"
    t.bigint "ISBN_13"
    t.string "ASIN", limit: 40
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books", force: :cascade do |t|
    t.bigint "title_id"
    t.bigint "author_list_id"
    t.bigint "book_identifier_id"
    t.bigint "storage_info_id"
    t.bigint "pages"
    t.string "publisher", limit: 40
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_list_id"], name: "index_books_on_author_list_id"
    t.index ["book_identifier_id"], name: "index_books_on_book_identifier_id"
    t.index ["storage_info_id"], name: "index_books_on_storage_info_id"
    t.index ["title_id"], name: "index_books_on_title_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name", limit: 40
    t.bigint "user_id"
    t.bigint "book_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_libraries_on_book_id"
    t.index ["user_id"], name: "index_libraries_on_user_id"
  end

  create_table "oeuvres", force: :cascade do |t|
    t.bigint "author_id"
    t.bigint "book_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_oeuvres_on_author_id"
    t.index ["book_id"], name: "index_oeuvres_on_book_id"
  end

  create_table "storage_infos", force: :cascade do |t|
    t.string "href", limit: 40
    t.string "cover_href", limit: 40
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "titles", force: :cascade do |t|
    t.string "title", limit: 40
    t.string "subtitle", limit: 40
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "author_lists", "authors"
  add_foreign_key "authors", "oeuvres"
  add_foreign_key "books", "author_lists"
  add_foreign_key "books", "book_identifiers"
  add_foreign_key "books", "storage_infos"
  add_foreign_key "books", "titles"
  add_foreign_key "libraries", "books"
  add_foreign_key "libraries", "users"
  add_foreign_key "oeuvres", "authors"
  add_foreign_key "oeuvres", "books"
end
