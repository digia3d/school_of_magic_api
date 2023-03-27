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

ActiveRecord::Schema[7.0].define(version: 2023_03_27_134101) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "alternate_names"
    t.string "species"
    t.string "gender"
    t.string "house"
    t.string "dateOfBirth"
    t.integer "yearOfBirth"
    t.string "blood_status"
    t.string "ancestry"
    t.string "eyeColour"
    t.string "hairColour"
    t.jsonb "wand"
    t.string "patronus"
    t.boolean "hogwartsStudent"
    t.boolean "hogwartsStaff"
    t.string "actor"
    t.boolean "alive"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
