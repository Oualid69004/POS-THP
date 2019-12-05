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

ActiveRecord::Schema.define(version: 2019_12_05_132252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "mobile"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_branches_on_company_id"
  end

  create_table "businesslines", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "closedcashes", force: :cascade do |t|
    t.string "money"
    t.string "host"
    t.string "hostsequence"
    t.bigint "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_closedcashes_on_branch_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "logo"
    t.string "mobile"
    t.bigint "businessline_id"
    t.bigint "stockcurrent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["businessline_id"], name: "index_companies_on_businessline_id"
    t.index ["stockcurrent_id"], name: "index_companies_on_stockcurrent_id"
  end

  create_table "company_categories", force: :cascade do |t|
    t.bigint "company_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_company_categories_on_category_id"
    t.index ["company_id"], name: "index_company_categories_on_company_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "adress"
    t.string "email"
    t.string "mobile"
    t.bigint "company_id"
    t.bigint "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_customers_on_company_id"
    t.index ["ticket_id"], name: "index_customers_on_ticket_id"
  end

  create_table "memories", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_memories_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "discountPer"
    t.string "discountVal"
    t.string "payment"
    t.float "total"
    t.string "transid"
    t.bigint "receipt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receipt_id"], name: "index_payments_on_receipt_id"
  end

  create_table "paymentsuppliers", force: :cascade do |t|
    t.string "paymentNote"
    t.string "paymentValue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "pricesell"
    t.string "pricebuy"
    t.float "stockvolume"
    t.string "reference"
    t.float "stockcost"
    t.bigint "category_id"
    t.bigint "stockcurrent_id"
    t.bigint "stocklevel_id"
    t.bigint "ticketline_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["stockcurrent_id"], name: "index_products_on_stockcurrent_id"
    t.index ["stocklevel_id"], name: "index_products_on_stocklevel_id"
    t.index ["ticketline_id"], name: "index_products_on_ticketline_id"
  end

  create_table "receipts", force: :cascade do |t|
    t.string "reference_receipt"
    t.bigint "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_receipts_on_ticket_id"
  end

  create_table "rolepermissions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.bigint "screen_id"
    t.index ["role_id"], name: "index_rolepermissions_on_role_id"
    t.index ["screen_id"], name: "index_rolepermissions_on_screen_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screens", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "parant"
    t.string "isrout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stockcurrents", force: :cascade do |t|
    t.string "idstockcurrent"
    t.float "cost"
    t.float "total"
    t.float "units"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_stockcurrents_on_company_id"
  end

  create_table "stockins", force: :cascade do |t|
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocklevels", force: :cascade do |t|
    t.string "location"
    t.float "stockmaximum"
    t.float "stocksecurity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.string "email"
    t.string "mobile"
    t.bigint "company_id"
    t.bigint "stockin_id"
    t.bigint "paymentsupplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_suppliers_on_company_id"
    t.index ["paymentsupplier_id"], name: "index_suppliers_on_paymentsupplier_id"
    t.index ["stockin_id"], name: "index_suppliers_on_stockin_id"
  end

  create_table "ticketlines", force: :cascade do |t|
    t.string "reference_ticket"
    t.string "line"
    t.float "price"
    t.string "taxid"
    t.float "unitCost"
    t.float "units"
    t.float "unitsRefund"
    t.bigint "product_id"
    t.bigint "ticket_id"
    t.bigint "memory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["memory_id"], name: "index_ticketlines_on_memory_id"
    t.index ["product_id"], name: "index_ticketlines_on_product_id"
    t.index ["ticket_id"], name: "index_ticketlines_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "discount"
    t.string "status"
    t.string "ticketCost"
    t.date "ticketDate"
    t.string "ticketNumber"
    t.float "ticketTotal"
    t.string "ticketid"
    t.string "tickettype"
    t.bigint "company_id"
    t.bigint "receipt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_tickets_on_company_id"
    t.index ["receipt_id"], name: "index_tickets_on_receipt_id"
  end

  create_table "typeproducts", force: :cascade do |t|
    t.string "line"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_typeproducts_on_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.bigint "company_id"
    t.bigint "role_id"
    t.bigint "memory_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["memory_id"], name: "index_users_on_memory_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
