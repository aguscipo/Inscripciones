# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161114183712) do

  create_table "revisors", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "apellido",   limit: 255
    t.string   "usuario",    limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "tema_id",    limit: 4
  end

  add_index "revisors", ["tema_id"], name: "index_revisors_on_tema_id", using: :btree

  create_table "temas", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tipo_presentacions", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "trabajos", force: :cascade do |t|
    t.integer  "nro_trabajo",            limit: 4
    t.string   "titulo",                 limit: 255
    t.string   "autor",                  limit: 255
    t.string   "autores_secundarios",    limit: 255
    t.text     "resumen",                limit: 65535
    t.string   "correo",                 limit: 255
    t.string   "correo_gmail",           limit: 255
    t.string   "tipo_presentacion",      limit: 255
    t.string   "tema",                   limit: 255
    t.string   "informacion_exposicion", limit: 255
    t.string   "estado",                 limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "revisor_id",             limit: 4
  end

  add_index "trabajos", ["revisor_id"], name: "index_trabajos_on_revisor_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "apellido",   limit: 255
    t.string   "usuario",    limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "revisors", "temas"
  add_foreign_key "trabajos", "revisors"
end
