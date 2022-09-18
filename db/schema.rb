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

ActiveRecord::Schema.define(version: 2022_09_17_133638) do

  create_table "categories", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_pages", force: :cascade do |t|
    t.string "apresentacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.integer "menu_id"
    t.index ["menu_id"], name: "index_menu_products_on_menu_id"
    t.index ["product_id"], name: "index_menu_products_on_product_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "description"
    t.boolean "ativo"
    t.float "preco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.integer "status_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["status_id"], name: "index_products_on_status_id"
  end

  create_table "progresses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "requesting_user"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.integer "status_id"
    t.integer "progress_id"
    t.index ["product_id"], name: "index_requests_on_product_id"
    t.index ["progress_id"], name: "index_requests_on_progress_id"
    t.index ["status_id"], name: "index_requests_on_status_id"
  end

  

end
