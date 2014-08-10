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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140810064435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "refinery_images", force: true do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.string   "image_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_ironman_catalogues", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "priced_resource_id"
    t.integer  "unpriced_resource_id"
    t.string   "products_link"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_ironman_categories", force: true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.text     "description"
    t.integer  "sort_order"
    t.boolean  "visible"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "short_description"
  end

  add_index "refinery_ironman_categories", ["slug"], name: "index_refinery_ironman_categories_on_slug", using: :btree

  create_table "refinery_ironman_categories_products", force: true do |t|
    t.integer "category_id"
    t.integer "product_id"
  end

  add_index "refinery_ironman_categories_products", ["category_id", "product_id"], name: "index_categories_products_on_category_id_and_product_id", unique: true, using: :btree

  create_table "refinery_ironman_category_hierarchies", id: false, force: true do |t|
    t.integer "ancestor_id",   null: false
    t.integer "descendant_id", null: false
    t.integer "generations",   null: false
  end

  add_index "refinery_ironman_category_hierarchies", ["ancestor_id", "descendant_id", "generations"], name: "category_anc_desc_udx", unique: true, using: :btree
  add_index "refinery_ironman_category_hierarchies", ["descendant_id"], name: "category_desc_idx", using: :btree

  create_table "refinery_ironman_enquiries", force: true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "suburb"
    t.string   "postcode"
    t.string   "state"
    t.string   "country"
    t.string   "email"
    t.string   "phone"
    t.string   "enquiry_type"
    t.integer  "vehicle_id"
    t.text     "message"
    t.boolean  "receive_news"
    t.boolean  "spam"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_ironman_event_details", force: true do |t|
    t.integer  "post_id"
    t.datetime "start"
    t.datetime "end"
    t.string   "location"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_ironman_media_releases", force: true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "publication"
    t.date     "published_at"
    t.text     "description"
    t.integer  "priced_resource_id"
    t.integer  "unpriced_resource_id"
    t.integer  "thumbnail_image_id"
    t.date     "posted_at"
    t.boolean  "draft"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_ironman_order_lines", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.decimal  "net_amount"
    t.decimal  "tax_amount"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_ironman_orders", force: true do |t|
    t.string   "order_no"
    t.integer  "stockist_id"
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "suburb"
    t.string   "postcode"
    t.string   "state"
    t.string   "country"
    t.string   "email"
    t.string   "phone"
    t.string   "enquiry_type"
    t.integer  "vehicle_id"
    t.text     "comments"
    t.decimal  "total_amount"
    t.decimal  "tax_amount"
    t.boolean  "spam"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_ironman_posts", force: true do |t|
    t.string   "title"
    t.string   "type"
    t.text     "teaser"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "index_image_id"
    t.integer  "hero_image_id"
    t.datetime "published_at"
    t.datetime "expire_at"
    t.boolean  "draft"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "refinery_ironman_posts", ["slug"], name: "index_refinery_ironman_posts_on_slug", using: :btree

  create_table "refinery_ironman_products", force: true do |t|
    t.string   "product_no"
    t.string   "name"
    t.text     "description"
    t.text     "notes"
    t.integer  "quantity_required"
    t.json     "product_attributes"
    t.decimal  "price"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "short_description"
  end

  add_index "refinery_ironman_products", ["slug"], name: "index_refinery_ironman_products_on_slug", using: :btree

  create_table "refinery_ironman_stockists", force: true do |t|
    t.string   "name"
    t.string   "store_type"
    t.string   "address"
    t.string   "suburb"
    t.string   "postcode"
    t.string   "state"
    t.string   "country"
    t.string   "contact"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.integer  "logo_image_id"
    t.boolean  "visible"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_ironman_vehicle_hierarchies", id: false, force: true do |t|
    t.integer "ancestor_id",   null: false
    t.integer "descendant_id", null: false
    t.integer "generations",   null: false
  end

  add_index "refinery_ironman_vehicle_hierarchies", ["ancestor_id", "descendant_id", "generations"], name: "vehicle_anc_desc_udx", unique: true, using: :btree
  add_index "refinery_ironman_vehicle_hierarchies", ["descendant_id"], name: "vehicle_desc_idx", using: :btree

  create_table "refinery_ironman_vehicles", force: true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.integer  "sort_order"
    t.boolean  "visible"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_ironman_vehicles_products", force: true do |t|
    t.integer "vehicle_id"
    t.integer "product_id"
  end

  add_index "refinery_ironman_vehicles_products", ["vehicle_id", "product_id"], name: "index_refinery_vehicles_products_on_vehicle_id_and_product_id", unique: true, using: :btree

  create_table "refinery_ironman_warehouses", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "suburb"
    t.string   "postcode"
    t.string   "state"
    t.string   "country"
    t.string   "phone"
    t.string   "fax"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_page_part_translations", force: true do |t|
    t.integer  "refinery_page_part_id", null: false
    t.string   "locale",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
  end

  add_index "refinery_page_part_translations", ["locale"], name: "index_refinery_page_part_translations_on_locale", using: :btree
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], name: "index_refinery_page_part_translations_on_refinery_page_part_id", using: :btree

  create_table "refinery_page_parts", force: true do |t|
    t.integer  "refinery_page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refinery_page_parts", ["id"], name: "index_refinery_page_parts_on_id", using: :btree
  add_index "refinery_page_parts", ["refinery_page_id"], name: "index_refinery_page_parts_on_refinery_page_id", using: :btree

  create_table "refinery_page_translations", force: true do |t|
    t.integer  "refinery_page_id", null: false
    t.string   "locale",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "custom_slug"
    t.string   "menu_title"
    t.string   "slug"
  end

  add_index "refinery_page_translations", ["locale"], name: "index_refinery_page_translations_on_locale", using: :btree
  add_index "refinery_page_translations", ["refinery_page_id"], name: "index_refinery_page_translations_on_refinery_page_id", using: :btree

  create_table "refinery_pages", force: true do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.string   "custom_slug"
    t.boolean  "show_in_menu",        default: true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           default: true
    t.boolean  "draft",               default: false
    t.boolean  "skip_to_first_child", default: false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "refinery_pages", ["depth"], name: "index_refinery_pages_on_depth", using: :btree
  add_index "refinery_pages", ["id"], name: "index_refinery_pages_on_id", using: :btree
  add_index "refinery_pages", ["lft"], name: "index_refinery_pages_on_lft", using: :btree
  add_index "refinery_pages", ["parent_id"], name: "index_refinery_pages_on_parent_id", using: :btree
  add_index "refinery_pages", ["rgt"], name: "index_refinery_pages_on_rgt", using: :btree

  create_table "refinery_resources", force: true do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_uid"
    t.string   "file_ext"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refinery_roles", force: true do |t|
    t.string "title"
  end

  create_table "refinery_roles_users", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "refinery_roles_users", ["role_id", "user_id"], name: "index_refinery_roles_users_on_role_id_and_user_id", using: :btree
  add_index "refinery_roles_users", ["user_id", "role_id"], name: "index_refinery_roles_users_on_user_id_and_role_id", using: :btree

  create_table "refinery_settings", force: true do |t|
    t.string   "name"
    t.text     "value"
    t.boolean  "destroyable",     default: true
    t.string   "scoping"
    t.boolean  "restricted",      default: false
    t.string   "form_value_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "title"
  end

  add_index "refinery_settings", ["name"], name: "index_refinery_settings_on_name", using: :btree

  create_table "refinery_user_plugins", force: true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "refinery_user_plugins", ["name"], name: "index_refinery_user_plugins_on_name", using: :btree
  add_index "refinery_user_plugins", ["user_id", "name"], name: "index_refinery_user_plugins_on_user_id_and_name", unique: true, using: :btree

  create_table "refinery_users", force: true do |t|
    t.string   "username",               null: false
    t.string   "email",                  null: false
    t.string   "encrypted_password",     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "full_name"
  end

  add_index "refinery_users", ["id"], name: "index_refinery_users_on_id", using: :btree
  add_index "refinery_users", ["slug"], name: "index_refinery_users_on_slug", using: :btree

  create_table "seo_meta", force: true do |t|
    t.integer  "seo_meta_id"
    t.string   "seo_meta_type"
    t.string   "browser_title"
    t.text     "meta_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seo_meta", ["id"], name: "index_seo_meta_on_id", using: :btree
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], name: "id_type_index_on_seo_meta", using: :btree

end
