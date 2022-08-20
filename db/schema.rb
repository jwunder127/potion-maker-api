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

ActiveRecord::Schema.define(version: 2022_08_20_192038) do

  create_table "effects", force: :cascade do |t|
    t.string "name"
    t.integer "base_integer"
    t.string "internal_id"
    t.string "description"
    t.float "base_cost"
    t.integer "base_magnitude"
    t.integer "base_duration"
    t.integer "value"
    t.boolean "is_poison"
  end

  create_table "effects_ingredients", id: false, force: :cascade do |t|
    t.integer "effect_id", null: false
    t.integer "ingredient_id", null: false
    t.index ["effect_id", "ingredient_id"], name: "index_effects_ingredients_on_effect_id_and_ingredient_id", unique: true
  end

  create_table "effects_potions", id: false, force: :cascade do |t|
    t.integer "effect_id", null: false
    t.integer "potion_id", null: false
    t.index ["effect_id", "potion_id"], name: "index_effects_potions_on_effect_id_and_potion_id", unique: true
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.string "image_url"
    t.string "expansion_pack"
    t.float "weight"
  end

  create_table "ingredients_potions", id: false, force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "potion_id", null: false
    t.index ["ingredient_id", "potion_id"], name: "index_ingredients_potions_on_ingredient_id_and_potion_id", unique: true
  end

  create_table "potions", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.boolean "is_poison"
    t.integer "type"
  end

end
