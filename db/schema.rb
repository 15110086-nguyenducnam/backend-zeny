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

ActiveRecord::Schema.define(version: 2018_12_07_160638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "api_keys", force: :cascade do |t|
    t.text "token"
    t.bigint "khachhang_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["khachhang_id"], name: "index_api_keys_on_khachhang_id"
  end

  create_table "banggia", force: :cascade do |t|
    t.decimal "gia"
    t.bigint "sanpham_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sanpham_id"], name: "index_banggia_on_sanpham_id"
  end

  create_table "chitiethdccs", force: :cascade do |t|
    t.integer "soluong"
    t.decimal "dongia"
    t.bigint "hopdongcc_id"
    t.bigint "sanpham_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hopdongcc_id"], name: "index_chitiethdccs_on_hopdongcc_id"
    t.index ["sanpham_id"], name: "index_chitiethdccs_on_sanpham_id"
  end

  create_table "chitiethdmuahangs", force: :cascade do |t|
    t.float "soluong"
    t.decimal "dongia"
    t.bigint "sanpham_id"
    t.bigint "hopdongmuahang_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hopdongmuahang_id"], name: "index_chitiethdmuahangs_on_hopdongmuahang_id"
    t.index ["sanpham_id"], name: "index_chitiethdmuahangs_on_sanpham_id"
  end

  create_table "hopdongccs", force: :cascade do |t|
    t.integer "trangthaihd", default: 0, null: false
    t.bigint "nhacc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tenhdcc"
    t.index ["nhacc_id"], name: "index_hopdongccs_on_nhacc_id"
  end

  create_table "hopdongmuahangs", force: :cascade do |t|
    t.integer "trangthaihd", default: 0, null: false
    t.bigint "khachhang_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["khachhang_id"], name: "index_hopdongmuahangs_on_khachhang_id"
  end

  create_table "khachhangs", force: :cascade do |t|
    t.string "ho"
    t.string "ten"
    t.bigint "loaikh_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sdt"
    t.date "dateofbirth"
    t.string "diachi"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_khachhangs_on_email", unique: true
    t.index ["loaikh_id"], name: "index_khachhangs_on_loaikh_id"
    t.index ["reset_password_token"], name: "index_khachhangs_on_reset_password_token", unique: true
  end

  create_table "loaikhs", force: :cascade do |t|
    t.string "tenloaikh"
    t.float "chietkhau"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loaisps", force: :cascade do |t|
    t.string "ten"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "nhanhieu_id"
    t.index ["nhanhieu_id"], name: "index_loaisps_on_nhanhieu_id"
  end

  create_table "nhaccs", force: :cascade do |t|
    t.string "tennhacc"
    t.string "diachi"
    t.integer "sdt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nhanhieus", force: :cascade do |t|
    t.string "ten"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "sanpham_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["sanpham_id"], name: "index_photos_on_sanpham_id"
  end

  create_table "sanphams", force: :cascade do |t|
    t.string "tensp"
    t.bigint "loaisp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "mota"
    t.text "thongso"
    t.index ["loaisp_id"], name: "index_sanphams_on_loaisp_id"
  end

  add_foreign_key "api_keys", "khachhangs"
  add_foreign_key "banggia", "sanphams"
  add_foreign_key "chitiethdccs", "hopdongccs"
  add_foreign_key "chitiethdccs", "sanphams"
  add_foreign_key "chitiethdmuahangs", "hopdongmuahangs"
  add_foreign_key "chitiethdmuahangs", "sanphams"
  add_foreign_key "hopdongccs", "nhaccs"
  add_foreign_key "hopdongmuahangs", "khachhangs"
  add_foreign_key "khachhangs", "loaikhs"
  add_foreign_key "loaisps", "nhanhieus"
  add_foreign_key "photos", "sanphams"
  add_foreign_key "sanphams", "loaisps"
end
