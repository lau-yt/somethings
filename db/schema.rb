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

ActiveRecord::Schema.define(version: 20171107023002) do

  create_table "comentarios", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etiqueta", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facultads", force: :cascade do |t|
    t.string "nombre"
    t.string "ubicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nivels", force: :cascade do |t|
    t.integer "puntaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
  end

  create_table "pregunta", force: :cascade do |t|
    t.integer "cantEtiqueta"
    t.string "titulo"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "respuesta", force: :cascade do |t|
    t.boolean "mejorResp"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "mail"
    t.integer "contPuntaje"
    t.string "contr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "facultad_id"
    t.integer "nivel_id"
  end

end
