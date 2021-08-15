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

ActiveRecord::Schema.define(version: 2021_08_15_104921) do

  create_table "course_labels", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "label_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id", "label_id"], name: "index_course_labels_on_course_id_and_label_id", unique: true
    t.index ["course_id"], name: "index_course_labels_on_course_id"
    t.index ["label_id"], name: "index_course_labels_on_label_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "map_link"
    t.index ["title"], name: "index_courses_on_title"
  end

  create_table "labels", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title"], name: "index_labels_on_title", unique: true
  end

  add_foreign_key "course_labels", "courses"
  add_foreign_key "course_labels", "labels"
end
