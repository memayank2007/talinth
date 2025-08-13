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

ActiveRecord::Schema[8.0].define(version: 2025_08_13_152046) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"
  enable_extension "pgcrypto"

  create_table "organizations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "subdomain"
    t.string "custom_domain"
    t.string "logo_url"
    t.string "primary_contact_name"
    t.string "primary_contact_email"
    t.string "phone"
    t.string "industry"
    t.integer "size"
    t.string "plan_id"
    t.datetime "plan_expires_at"
    t.integer "max_users"
    t.integer "max_interviews_per_month"
    t.text "billing_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "time_zone"
    t.string "language"
    t.string "ai_model"
    t.string "branding_color"
    t.string "status"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.integer "price_cents", default: 0, null: false
    t.string "currency", default: "INR", null: false
    t.integer "monthly_interview_limit", default: 20, null: false
    t.integer "monthly_minutes_limit", default: 200, null: false
    t.boolean "priority_support", default: false, null: false
    t.boolean "custom_domain", default: false, null: false
    t.jsonb "features", default: {}, null: false
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_plans_on_code", unique: true
  end
end
