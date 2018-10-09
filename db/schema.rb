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

ActiveRecord::Schema.define(version: 2018_10_08_064117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mushrooms", force: :cascade do |t|
    t.string "identifier"
    t.integer "edible"
    t.integer "cap_shape"
    t.integer "cap_color"
    t.integer "cap_surface"
    t.integer "bruiser"
    t.integer "odor"
    t.integer "gill_attachment"
    t.integer "gill_spacing"
    t.integer "gill_size"
    t.integer "gill_color"
    t.integer "stalk_shape"
    t.integer "stalk_root"
    t.integer "stalk_surface_above_ring"
    t.integer "stalk_surface_below_ring"
    t.integer "stalk_color_above_ring"
    t.integer "stalk_color_below_ring"
    t.integer "veil_type"
    t.integer "veil_color"
    t.integer "ring_number"
    t.integer "ring_type"
    t.integer "spore_print_color"
    t.integer "population"
    t.integer "habitat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
