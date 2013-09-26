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

ActiveRecord::Schema.define(:version => 20130917234705) do

  create_table "bahans", :force => true do |t|
    t.string   "nama"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "location_id"
    t.integer  "stock"
  end

  create_table "karyawans", :force => true do |t|
    t.string   "nama_karyawan"
    t.integer  "gaji"
    t.integer  "location_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name_location"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "pembelians", :force => true do |t|
    t.integer  "bahan_id"
    t.integer  "harga_beli"
    t.integer  "location_id"
    t.date     "tanggal"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "jumlah",      :default => 1
    t.decimal  "total"
  end

  create_table "pengeluaran_bulanans", :force => true do |t|
    t.date     "bulan"
    t.integer  "jumlah"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pengeluaran_harians", :force => true do |t|
    t.date     "tanggal"
    t.integer  "jumlah"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "penjualan_bahans", :force => true do |t|
    t.integer  "penjualan_id"
    t.integer  "bahan_id"
    t.integer  "jumlah_bahan"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "penjualan_details", :force => true do |t|
    t.date     "tanggal"
    t.integer  "penjualan_id"
    t.integer  "product_id"
    t.integer  "jumlah_barang"
    t.integer  "jumlah_penjualan"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "penjualans", :force => true do |t|
    t.date     "tanggal"
    t.integer  "location_id"
    t.integer  "jumlah_penjualan"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "nama_product"
    t.float    "harga"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
