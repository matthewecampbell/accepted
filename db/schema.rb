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

ActiveRecord::Schema.define(version: 20160922084910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "average_caches", force: :cascade do |t|
    t.integer  "rater_id"
    t.string   "rateable_type"
    t.integer  "rateable_id"
    t.float    "avg",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.integer  "total_price_in_state"
    t.integer  "total_price_out_of_state"
    t.integer  "percent_admitted"
    t.integer  "yield"
    t.integer  "total_applicants"
    t.string   "act_range"
    t.string   "city"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "affiliation"
    t.integer  "six_year_grad_rate"
    t.integer  "total_enrollment"
    t.datetime "updated_at"
    t.datetime "created_at"
    t.integer  "act_low"
    t.integer  "act_high"
  end

  create_table "favorite_colleges", force: :cascade do |t|
    t.string   "name"
    t.integer  "total_price_in_state"
    t.integer  "total_price_out_of_state"
    t.integer  "percent_admitted"
    t.integer  "yield"
    t.integer  "total_applicants"
    t.string   "act_range"
    t.string   "city"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "affiliation"
    t.integer  "six_year_grad_rate"
    t.integer  "total_enrollment"
    t.datetime "updated_at"
    t.datetime "created_at"
    t.integer  "act_low"
    t.integer  "act_high"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_favorite_colleges_on_user_id", using: :btree
  end

  create_table "overall_averages", force: :cascade do |t|
    t.string   "rateable_type"
    t.integer  "rateable_id"
    t.float    "overall_avg",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "rater_id"
    t.string   "rateable_type"
    t.integer  "rateable_id"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type", using: :btree
    t.index ["rater_id"], name: "index_rates_on_rater_id", using: :btree
  end

  create_table "rating_caches", force: :cascade do |t|
    t.string   "cacheable_type"
    t.integer  "cacheable_id"
    t.float    "avg",            null: false
    t.integer  "qty",            null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.integer  "sign_in_count",          default: 0
    t.integer  "enrollment_preference"
    t.integer  "act_score"
    t.integer  "in_state_max"
    t.integer  "out_of_state_max"
    t.string   "affiliation_preference"
    t.integer  "grad_rate_preference"
  end

  add_foreign_key "favorite_colleges", "users"
end
