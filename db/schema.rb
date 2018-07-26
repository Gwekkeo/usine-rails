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

ActiveRecord::Schema.define(version: 2018_07_26_145724) do

  create_table "assemblages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assemblages_pieces", id: false, force: :cascade do |t|
    t.integer "assemblage_id", null: false
    t.integer "piece_id", null: false
    t.index ["assemblage_id", "piece_id"], name: "index_assemblages_pieces_on_assemblage_id_and_piece_id"
    t.index ["piece_id", "assemblage_id"], name: "index_assemblages_pieces_on_piece_id_and_assemblage_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "part_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
