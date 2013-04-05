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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130404194132) do

  create_table "hs_accounts", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.integer  "account_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "hs_agendas", :force => true do |t|
    t.integer  "hs_doctor_id"
    t.string   "day"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "hs_blogs", :force => true do |t|
    t.string   "title"
    t.string   "text"
    t.string   "abstract"
    t.string   "tags"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hs_bookings", :force => true do |t|
    t.integer  "hs_agenda_id"
    t.integer  "hs_user_id"
    t.integer  "hs_day_id"
    t.integer  "hs_hour_id"
    t.integer  "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "hs_clinics", :force => true do |t|
    t.integer  "hs_account_id"
    t.string   "name"
    t.string   "address"
    t.string   "country"
    t.integer  "hs_state_id"
    t.string   "township"
    t.string   "phone"
    t.string   "email"
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "hs_days", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hs_doctors", :force => true do |t|
    t.integer  "hs_account_id"
    t.string   "names"
    t.string   "last_names"
    t.string   "rut"
    t.string   "specialty"
    t.integer  "has_avatar"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "hs_clinic_id"
  end

  create_table "hs_hours", :force => true do |t|
    t.time     "hour"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hs_patient_files", :force => true do |t|
    t.integer  "hs_doctor_id"
    t.integer  "hs_user_id"
    t.string   "symptom"
    t.string   "treatment"
    t.string   "indication"
    t.string   "comment"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "hs_secretaries", :force => true do |t|
    t.integer  "hs_account_id"
    t.string   "names"
    t.string   "last_names"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "hs_states", :force => true do |t|
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hs_subspecialties", :force => true do |t|
    t.integer  "hs_doctor_id"
    t.string   "area"
    t.string   "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "hs_townships", :force => true do |t|
    t.integer  "hs_state_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "hs_users", :force => true do |t|
    t.integer  "hs_account_id"
    t.string   "names"
    t.string   "last_name"
    t.string   "rut"
    t.string   "phone"
    t.string   "health_ensurance"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
