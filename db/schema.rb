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

ActiveRecord::Schema.define(:version => 20130327204216) do

  create_table "admin_catalogs", :force => true do |t|
    t.string   "nom"
    t.string   "description"
    t.integer  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "admin_inputs", :force => true do |t|
    t.string   "cod"
    t.integer  "catalog_id"
    t.integer  "product_id"
    t.integer  "unit_id"
    t.integer  "supplier_id"
    t.string   "location"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "admin_inputs", ["catalog_id"], :name => "index_admin_inputs_on_catalog_id"
  add_index "admin_inputs", ["product_id"], :name => "index_admin_inputs_on_product_id"
  add_index "admin_inputs", ["supplier_id"], :name => "index_admin_inputs_on_supplier_id"
  add_index "admin_inputs", ["unit_id"], :name => "index_admin_inputs_on_unit_id"

  create_table "admin_outputs", :force => true do |t|
    t.string   "cod"
    t.integer  "catalog_id"
    t.integer  "product_id"
    t.integer  "unit_id"
    t.decimal  "amount"
    t.integer  "staff_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "admin_outputs", ["catalog_id"], :name => "index_admin_outputs_on_catalog_id"
  add_index "admin_outputs", ["product_id"], :name => "index_admin_outputs_on_product_id"
  add_index "admin_outputs", ["staff_id"], :name => "index_admin_outputs_on_staff_id"
  add_index "admin_outputs", ["unit_id"], :name => "index_admin_outputs_on_unit_id"

  create_table "admin_products", :force => true do |t|
    t.integer  "catalog_id"
    t.integer  "unit_id"
    t.integer  "supplier_id"
    t.string   "name"
    t.string   "ref"
    t.string   "manufacturer"
    t.string   "location"
    t.decimal  "price"
    t.decimal  "amount"
    t.integer  "status"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "admin_products", ["catalog_id"], :name => "index_admin_products_on_catalog_id"
  add_index "admin_products", ["supplier_id"], :name => "index_admin_products_on_supplier_id"
  add_index "admin_products", ["unit_id"], :name => "index_admin_products_on_unit_id"

  create_table "admin_returns", :force => true do |t|
    t.string   "cod"
    t.integer  "catalog_id"
    t.integer  "product_id"
    t.integer  "unit_id"
    t.integer  "staff_id"
    t.string   "state"
    t.decimal  "amount"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "admin_returns", ["catalog_id"], :name => "index_admin_returns_on_catalog_id"
  add_index "admin_returns", ["product_id"], :name => "index_admin_returns_on_product_id"
  add_index "admin_returns", ["staff_id"], :name => "index_admin_returns_on_staff_id"
  add_index "admin_returns", ["unit_id"], :name => "index_admin_returns_on_unit_id"

  create_table "admin_staffs", :force => true do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_suppliers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_units", :force => true do |t|
    t.string   "nom"
    t.string   "symbol"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
