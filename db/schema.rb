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

ActiveRecord::Schema.define(version: 2021_06_28_180323) do

  create_table "card_states", charset: "latin1", force: :cascade do |t|
    t.integer "carte_ID"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cartes", charset: "latin1", force: :cascade do |t|
    t.string "card_id"
    t.string "string"
    t.string "masked_pan"
    t.decimal "card_balance", precision: 10
    t.string "card_holder"
    t.string "billing_name"
    t.string "billing_address"
    t.string "billing_city"
    t.string "billing_country"
    t.string "billing_zip_code"
    t.string "card_currency"
    t.string "status"
    t.string "success"
    t.string "billing_state"
    t.string "zip_code"
    t.string "card_pan"
    t.string "cvv"
    t.decimal "cardbalance", precision: 10
    t.string "expiration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "otps", charset: "latin1", force: :cascade do |t|
    t.integer "user_id"
    t.integer "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transaction", charset: "latin1", force: :cascade do |t|
    t.string "transaction_Id"
    t.decimal "TransactionAmount", precision: 10
    t.decimal "Fee", precision: 10
    t.string "ProductName"
    t.string "ProviderResponseCode"
    t.string "ProviderResponseMessage"
    t.string "ProviderReference"
    t.string "UniqueReferenceDetails"
    t.string "TransactionReference"
    t.string "Status"
    t.decimal "ProductID", precision: 10
    t.string "UniqueReference"
    t.string "PaymentReference"
    t.string "PaymentType"
    t.string "PaymentResponsiveCode"
    t.string "PaymentResponsiveMessage"
    t.decimal "AmountReference", precision: 10
    t.integer "CurrencyId"
    t.string "Narration"
    t.string "Indicator"
    t.string "DateCreated"
    t.string "StatusName"
    t.string "Description"
    t.string "Currency"
    t.string "MerchantName"
    t.string "TransactionDescription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "latin1", force: :cascade do |t|
    t.string "phone"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
