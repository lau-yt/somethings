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

ActiveRecord::Schema.define(version: 20171213124730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_reports", force: :cascade do |t|
    t.string "titulo"
    t.integer "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.string "descripcion"
    t.integer "question_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_answers", force: :cascade do |t|
    t.string "descripcion"
    t.integer "user_id"
    t.integer "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_questions", force: :cascade do |t|
    t.string "descripcion"
    t.integer "user_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_report_answers", force: :cascade do |t|
    t.string "titulo"
    t.integer "comment_answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_report_questions", force: :cascade do |t|
    t.string "titulo"
    t.integer "comment_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "descripcion"
    t.integer "question_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "helps", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permits", force: :cascade do |t|
    t.integer "votes_pos"
    t.integer "comment"
    t.integer "votes_neg"
    t.integer "adm_tag"
    t.integer "adm_uni"
    t.integer "modificar_contenido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "create_question_answer"
  end

  create_table "points", force: :cascade do |t|
    t.integer "puntos"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_reports", force: :cascade do |t|
    t.string "titulo"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "university_id"
    t.integer "best_answer_id"
    t.integer "answers_count", default: 0, null: false
  end

  create_table "questions_tags", id: false, force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "question_id"
    t.index ["question_id"], name: "index_questions_tags_on_question_id"
    t.index ["tag_id"], name: "index_questions_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "marca", default: false, null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string "nombre"
    t.string "ubicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "marca", default: false, null: false
    t.integer "questions_count", default: 0, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "apellido"
    t.integer "university_id"
    t.integer "level_id"
    t.integer "puntaje", default: 1, null: false
    t.boolean "marca", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

end
