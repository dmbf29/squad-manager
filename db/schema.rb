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

ActiveRecord::Schema.define(version: 2019_02_25_023844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "formations", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.integer "dfs"
    t.integer "mfs"
    t.integer "fws"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "nation"
    t.integer "age"
    t.integer "potential_high"
    t.integer "potential_low"
    t.integer "rating"
    t.string "badge"
    t.integer "status"
    t.string "photo"
    t.bigint "squad_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["squad_place_id"], name: "index_players_on_squad_place_id"
  end

  create_table "squad_places", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.bigint "squad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["squad_id"], name: "index_squad_places_on_squad_id"
  end

  create_table "squads", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "formation_id"
    t.string "name"
    t.string "badge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formation_id"], name: "index_squads_on_formation_id"
    t.index ["user_id"], name: "index_squads_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "players", "squad_places"
  add_foreign_key "squad_places", "squads"
  add_foreign_key "squads", "formations"
  add_foreign_key "squads", "users"
end
