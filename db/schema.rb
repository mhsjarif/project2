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

ActiveRecord::Schema.define(version: 20180419052234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attractions", force: :cascade do |t|
    t.string "name"
    t.string "ride_image"
    t.text "description"
    t.integer "avg_rating"
    t.integer "rec_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_attractions_on_category_id"
  end

  create_table "avatars", force: :cascade do |t|
    t.string "avatar_name"
    t.string "avatar_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "genre"
    t.string "image"
  end

  create_table "helpfuls", force: :cascade do |t|
    t.integer "h_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "content"
    t.integer "rating"
    t.boolean "recommend"
    t.datetime "updated_at", null: false
    t.bigint "attraction_id"
    t.bigint "user_id"
    t.index ["attraction_id"], name: "index_reviews_on_attraction_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "unhelpfuls", force: :cascade do |t|
    t.integer "uh_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "image"
    t.string "quote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.bigint "avatar_id"
    t.index ["avatar_id"], name: "index_users_on_avatar_id"
  end

  add_foreign_key "attractions", "categories"
  add_foreign_key "reviews", "attractions"
  add_foreign_key "reviews", "users"
  add_foreign_key "users", "avatars"
end
