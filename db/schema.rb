# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 2021_02_20_212922) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'filters', force: :cascade do |t|
    t.string 'name'
    t.string 'items'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'vals'
    t.index ['user_id'], name: 'index_filters_on_user_id'
  end

  create_table 'msas', force: :cascade do |t|
    t.integer 'code'
    t.string 'name'
    t.string 'states'
    t.string 'zone'
    t.integer 'pop'
    t.float 'wage'
    t.float 'unemp'
    t.integer 'heat'
    t.float 'cold'
    t.float 'precip'
    t.float 'snow'
    t.float 'aqi'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'password_digest'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'filters', 'users'
end
