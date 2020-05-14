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

ActiveRecord::Schema.define(version: 2020_05_13_131048) do

  create_table "eats", force: :cascade do |t|
    t.integer "id_uzytkownika"
    t.date "data"
    t.integer "id_pokarmu"
    t.integer "ilosc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokarmies", force: :cascade do |t|
    t.string "nazwa"
    t.decimal "kalorie", precision: 4, scale: 1
    t.decimal "bialko", precision: 3, scale: 1
    t.decimal "weglowodany", precision: 3, scale: 1
    t.decimal "tluszcz", precision: 3, scale: 1
    t.decimal "blonnik", precision: 3, scale: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nazwa"], name: "index_pokarmies_on_nazwa", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "uzytkowniks", force: :cascade do |t|
    t.integer "id_uzytkownika"
    t.integer "wzrost"
    t.decimal "waga", precision: 4, scale: 1
    t.decimal "bmi", precision: 3, scale: 1
    t.integer "kcaldospoz"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
