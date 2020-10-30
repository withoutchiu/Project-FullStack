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

ActiveRecord::Schema.define(version: 2020_10_30_010937) do

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.string "localized_name"
    t.string "attack_type"
    t.integer "legs"
    t.integer "primary_attribute_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img"
    t.string "icon"
    t.integer "base_health"
    t.integer "base_health_regen"
    t.integer "base_mana"
    t.integer "base_mana_regen"
    t.integer "base_armor"
    t.integer "base_mr"
    t.integer "base_attack_min"
    t.integer "base_attack_max"
    t.integer "base_str"
    t.integer "base_agi"
    t.integer "base_int"
    t.integer "str_gain"
    t.integer "agi_gain"
    t.integer "int_gain"
    t.integer "attack_range"
    t.integer "projectile_speed"
    t.integer "attack_rate"
    t.integer "move_speed"
    t.integer "turn_rate"
    t.string "cm_enabled"
    t.index ["primary_attribute_id"], name: "index_heros_on_primary_attribute_id"
  end

  create_table "primary_attributes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "heros", "primary_attributes"
end
