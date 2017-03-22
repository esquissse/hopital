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

ActiveRecord::Schema.define(version: 20170315135547) do

  create_table "actes", force: :cascade do |t|
    t.datetime "date_heure"
    t.integer  "type_acte_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "docteur_id"
    t.integer  "sejour_id"
    t.integer  "patient_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "valeur"
    t.integer  "type_contact"
    t.integer  "patient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "docteurs", force: :cascade do |t|
    t.string   "nom_usage"
    t.string   "prenom_usage"
    t.string   "nom_naissance"
    t.string   "adeli"
    t.string   "rpps"
    t.string   "photo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "docteurs_services", force: :cascade do |t|
    t.integer "docteur_id"
    t.integer "service_id"
  end

  create_table "donnees_vitales", force: :cascade do |t|
    t.date     "date"
    t.string   "valeur"
    t.integer  "patient_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "type_donnee_vitale_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "IPP"
    t.string   "nom_usage"
    t.string   "prenom_usage"
    t.string   "nom_naissance"
    t.date     "date_naissance"
    t.string   "commune_naissance"
    t.string   "pays_naissance"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "sejours", force: :cascade do |t|
    t.datetime "date_debut"
    t.datetime "date_fin"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "libelle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types_actes", force: :cascade do |t|
    t.string   "libelle"
    t.float    "cout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types_donnees_vitales", force: :cascade do |t|
    t.string   "libelle"
    t.string   "unite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
