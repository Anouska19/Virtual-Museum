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

ActiveRecord::Schema.define(version: 2020_01_14_153332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artistes", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arts", force: :cascade do |t|
    t.text "photo"
    t.integer "date"
    t.string "dimension"
    t.string "titre"
    t.bigint "artiste_id"
    t.bigint "description_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artiste_id"], name: "index_arts_on_artiste_id"
    t.index ["description_id"], name: "index_arts_on_description_id"
  end

  create_table "descriptions", force: :cascade do |t|
    t.string "technique_utilise"
    t.string "l_histoire_de_l_oeuvre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "arts", "artistes"
  add_foreign_key "arts", "descriptions"
end
