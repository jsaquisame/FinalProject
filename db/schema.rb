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

ActiveRecord::Schema.define(version: 2018_11_07_022630) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "band_instruments", force: :cascade do |t|
    t.string "bi_name"
    t.string "bi_brand"
    t.string "bi_type"
    t.integer "band_member_id"
    t.integer "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_band_instruments_on_band_id"
    t.index ["band_member_id"], name: "index_band_instruments_on_band_member_id"
  end

  create_table "band_members", force: :cascade do |t|
    t.string "bm_name"
    t.string "biography"
    t.integer "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_band_members_on_band_id"
  end

  create_table "bands", force: :cascade do |t|
    t.string "band_name"
    t.datetime "founded"
    t.string "bandtype"
    t.integer "band_contact_number"
    t.string "band_biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "client_name"
    t.integer "client_contact_number"
    t.string "client_review"
    t.string "client_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gig_types", force: :cascade do |t|
    t.string "event"
    t.string "privacy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gigs", force: :cascade do |t|
    t.integer "fee"
    t.string "about"
    t.datetime "date"
    t.string "venue"
    t.integer "gig_type_id"
    t.integer "client_id"
    t.integer "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_gigs_on_band_id"
    t.index ["client_id"], name: "index_gigs_on_client_id"
    t.index ["gig_type_id"], name: "index_gigs_on_gig_type_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.integer "gig_id"
    t.integer "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gig_id"], name: "index_playlists_on_gig_id"
    t.index ["song_id"], name: "index_playlists_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "song_name"
    t.string "song_artist"
    t.integer "popularity"
    t.string "album"
    t.string "language"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_songs_on_genre_id"
  end

end
