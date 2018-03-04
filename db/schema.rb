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

ActiveRecord::Schema.define(version: 20180303123308) do

  create_table "episodes", force: :cascade do |t|
    t.string "titre"
    t.string "video"
    t.string "description"
    t.integer "num"
    t.integer "saison_id"
    t.string "langue"
    t.string "sous_titre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "duree"
    t.index ["saison_id"], name: "index_episodes_on_saison_id"
  end

  create_table "filmes", force: :cascade do |t|
    t.string "titre"
    t.string "titre2"
    t.string "image"
    t.string "langue"
    t.string "couleur"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "duree"
    t.string "sous_titre"
    t.integer "annee"
    t.string "background"
    t.string "video"
    t.string "lien"
  end

  create_table "mangas", force: :cascade do |t|
    t.string "titre"
    t.string "titre2"
    t.string "image"
    t.string "couleur"
    t.string "description"
    t.string "duree"
    t.string "annee"
    t.string "background"
    t.string "lien"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saisons", force: :cascade do |t|
    t.string "titre"
    t.integer "manga_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manga_id"], name: "index_saisons_on_manga_id"
  end

end
