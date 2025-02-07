# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_05_185712) do

  create_table "game_libraries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "game_title"
    t.string "game_developer"
    t.string "genre"
    t.float "price"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "gamer_tag"
    t.string "bio"
    t.date "creation_date"
    t.string "image_url"
  end

end
