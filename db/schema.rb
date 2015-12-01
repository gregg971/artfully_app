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

ActiveRecord::Schema.define(:version => 20151201135361) do

  create_table "actions", :force => true do |t|
    t.integer  "organization_id"
    t.integer  "person_id"
    t.datetime "occurred_at"
    t.text     "details"
    t.boolean  "starred"
    t.integer  "dollar_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.string   "subtype"
    t.integer  "subject_id"
    t.string   "subject_type"
    t.integer  "creator_id"
    t.integer  "import_id"
    t.datetime "deleted_at"
    t.boolean  "hide_on_recent_activity", :default => false
    t.string   "external_reference"
  end

  add_index "actions", ["creator_id"], :name => "index_actions_on_creator_id"
  add_index "actions", ["deleted_at"], :name => "index_actions_on_deleted_at"
  add_index "actions", ["import_id"], :name => "index_actions_on_import_id"
  add_index "actions", ["organization_id", "person_id"], :name => "index_actions_on_organization_id_and_person_id"
  add_index "actions", ["organization_id"], :name => "index_actions_on_organization_id"
  add_index "actions", ["person_id"], :name => "index_actions_on_person_id"
  add_index "actions", ["subject_id"], :name => "index_actions_on_subject_id"
  add_index "actions", ["subject_type"], :name => "index_actions_on_subject_type"
  add_index "actions", ["type"], :name => "index_actions_on_type"

  create_table "addresses", :force => true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "household_id"
    t.string   "kind",         :default => "Other"
    t.boolean  "is_primary",   :default => true
  end

  add_index "addresses", ["household_id"], :name => "index_addresses_on_household_id"
  add_index "addresses", ["person_id"], :name => "index_addresses_on_person_id"

  create_table "advanced_search_segments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "advanced_search_id"
    t.integer  "organization_id"
  end

  create_table "advanced_searches", :force => true do |t|
    t.integer  "organization_id"
    t.integer  "user_id"
    t.text     "search_parameters"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "advanced_searches", ["organization_id", "user_id"], :name => "index_advanced_searches_on_organization_id_and_user_id"

  create_table "appeals", :force => true do |t|
    t.integer  "campaign_id"
    t.integer  "organization_id"
    t.string   "name"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string   "channel"
    t.integer  "segment_id"
    t.string   "status"
    t.integer  "raised",              :default => 0, :null => false
    t.text     "notes"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "file_1_file_name"
    t.string   "file_1_content_type"
    t.integer  "file_1_file_size"
    t.datetime "file_1_updated_at"
    t.string   "file_2_file_name"
    t.string   "file_2_content_type"
    t.integer  "file_2_file_size"
    t.datetime "file_2_updated_at"
    t.string   "file_3_file_name"
    t.string   "file_3_content_type"
    t.integer  "file_3_file_size"
    t.datetime "file_3_updated_at"
    t.datetime "deleted_at"
    t.integer  "import_id"
  end

  add_index "appeals", ["campaign_id"], :name => "index_appeals_on_campaign_id"
  add_index "appeals", ["ends_at"], :name => "index_appeals_on_ends_at"
  add_index "appeals", ["organization_id"], :name => "index_appeals_on_organization_id"
  add_index "appeals", ["segment_id"], :name => "index_appeals_on_segment_id"
  add_index "appeals", ["starts_at"], :name => "index_appeals_on_starts_at"
  add_index "appeals", ["status"], :name => "index_appeals_on_status"

  create_table "audits", :force => true do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes"
    t.integer  "version",         :default => 0
    t.string   "comment"
    t.string   "remote_address"
    t.datetime "created_at"
  end

  add_index "audits", ["associated_id", "associated_type"], :name => "associated_index"
  add_index "audits", ["auditable_id", "auditable_type"], :name => "auditable_index"
  add_index "audits", ["created_at"], :name => "index_audits_on_created_at"
  add_index "audits", ["user_id", "user_type"], :name => "user_index"

  create_table "budget_restrictions", :force => true do |t|
    t.integer  "organization_id"
    t.string   "name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "campaigns", :force => true do |t|
    t.integer  "organization_id"
    t.string   "name"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string   "status",                :default => "active", :null => false
    t.text     "notes"
    t.integer  "goal",                  :default => 0,        :null => false
    t.integer  "raised",                :default => 0,        :null => false
    t.integer  "budget_restriction_id"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.datetime "deleted_at"
    t.integer  "import_id"
  end

  add_index "campaigns", ["ends_at"], :name => "index_campaigns_on_ends_at"
  add_index "campaigns", ["organization_id"], :name => "index_campaigns_on_organization_id"
  add_index "campaigns", ["starts_at"], :name => "index_campaigns_on_starts_at"
  add_index "campaigns", ["status"], :name => "index_campaigns_on_status"

  create_table "carts", :force => true do |t|
    t.string   "state"
    t.string   "transaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.integer  "discount_id"
    t.string   "token"
    t.string   "reseller_id"
    t.integer  "applied_pass_id"
  end

  add_index "carts", ["token"], :name => "index_carts_on_token", :unique => true

  create_table "charts", :force => true do |t|
    t.string  "name"
    t.boolean "is_template"
    t.integer "event_id"
    t.integer "organization_id"
    t.string  "type"
    t.integer "venue_id"
    t.string  "public_note"
  end

  add_index "charts", ["event_id"], :name => "index_charts_on_event_id"
  add_index "charts", ["organization_id"], :name => "index_charts_on_organization_id"

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "queue"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "discounts", :force => true do |t|
    t.string   "code",                                   :null => false
    t.boolean  "active",               :default => true, :null => false
    t.string   "promotion_type",                         :null => false
    t.text     "properties"
    t.integer  "event_id",                               :null => false
    t.integer  "organization_id",                        :null => false
    t.integer  "user_id",                                :null => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.datetime "deleted_at"
    t.integer  "minimum_ticket_count"
    t.text     "sections"
    t.integer  "limit"
    t.text     "ticket_types"
  end

  create_table "discounts_shows", :force => true do |t|
    t.integer "discount_id", :null => false
    t.integer "show_id",     :null => false
  end

  create_table "donations", :force => true do |t|
    t.integer  "amount"
    t.integer  "cart_id"
    t.integer  "organization_id"
    t.integer  "campaign_id"
    t.integer  "appeal_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_fee",     :default => 0
    t.datetime "commitment_date"
    t.datetime "ack_sent_date"
    t.boolean  "match_eligible",  :default => false
    t.integer  "matcher"
    t.integer  "eligible_amount"
    t.integer  "ratio"
    t.boolean  "pledge",          :default => false
    t.string   "fiscal_year"
    t.integer  "received_amount", :default => 0
  end

  add_index "donations", ["appeal_id"], :name => "index_donations_on_appeal_id"
  add_index "donations", ["campaign_id"], :name => "index_donations_on_campaign_id"
  add_index "donations", ["cart_id"], :name => "index_donations_on_cart_id"
  add_index "donations", ["order_id"], :name => "index_donations_on_order_id"
  add_index "donations", ["organization_id"], :name => "index_donations_on_organization_id"

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "producer"
    t.boolean  "is_free"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.text     "description"
    t.integer  "venue_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.string   "special_instructions_caption", :default => "Special Instructions"
    t.boolean  "show_special_instructions",    :default => false
    t.integer  "import_id"
    t.string   "uuid"
    t.boolean  "public",                       :default => false
    t.string   "primary_category"
    t.text     "secondary_categories"
    t.boolean  "members_only",                 :default => false
    t.text     "cached_stats"
    t.string   "subtitle"
    t.boolean  "assigned",                     :default => false
  end

  add_index "events", ["uuid"], :name => "index_events_on_uuid"
  add_index "events", ["venue_id"], :name => "index_events_on_venue_id"

  create_table "events_pass_types", :force => true do |t|
    t.integer  "organization_id"
    t.integer  "event_id"
    t.integer  "pass_type_id"
    t.text     "ticket_types"
    t.text     "excluded_shows"
    t.datetime "deleted_at"
    t.boolean  "active",          :default => true
    t.integer  "limit_per_pass"
  end

  add_index "events_pass_types", ["event_id", "pass_type_id"], :name => "index_events_pass_types_on_event_id_and_pass_type_id"
  add_index "events_pass_types", ["event_id"], :name => "index_events_pass_types_on_event_id"
  add_index "events_pass_types", ["organization_id"], :name => "index_events_pass_types_on_organization_id"
  add_index "events_pass_types", ["pass_type_id", "event_id"], :name => "index_events_pass_types_on_pass_type_id_and_event_id"
  add_index "events_pass_types", ["pass_type_id"], :name => "index_events_pass_types_on_pass_type_id"

  create_table "gateway_transactions", :force => true do |t|
    t.string   "transaction_id"
    t.boolean  "success"
    t.integer  "service_fee"
    t.integer  "amount"
    t.string   "message"
    t.text     "response"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "gateway_transactions", ["transaction_id"], :name => "index_gateway_transactions_on_transaction_id"

  create_table "households", :force => true do |t|
    t.string   "name"
    t.integer  "organization_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.boolean  "shared_address",             :default => true
    t.boolean  "overwrite_member_addresses", :default => false, :null => false
  end

  create_table "import_errors", :force => true do |t|
    t.integer  "import_id"
    t.text     "row_data"
    t.text     "error_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "import_messages", :force => true do |t|
    t.integer  "import_id"
    t.integer  "person_id"
    t.integer  "row_number"
    t.text     "row_data"
    t.text     "message"
    t.datetime "deleted_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "import_messages", ["import_id"], :name => "index_import_messages_on_import_id"

  create_table "import_rows", :force => true do |t|
    t.integer "import_id"
    t.text    "content"
  end

  add_index "import_rows", ["import_id"], :name => "index_import_rows_on_import_id"

  create_table "imports", :force => true do |t|
    t.integer  "user_id"
    t.string   "s3_bucket"
    t.string   "s3_key"
    t.string   "s3_etag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",          :default => "pending"
    t.text     "import_headers"
    t.integer  "organization_id"
    t.string   "type"
  end

  add_index "imports", ["organization_id"], :name => "index_imports_on_organization_id"

  create_table "items", :force => true do |t|
    t.string   "state"
    t.string   "product_type"
    t.integer  "product_id"
    t.integer  "price"
    t.integer  "realized_price"
    t.integer  "net"
    t.string   "fs_project_id"
    t.integer  "nongift_amount",  :default => 0
    t.boolean  "is_noncash"
    t.boolean  "is_stock"
    t.boolean  "is_anonymous"
    t.datetime "fs_available_on"
    t.datetime "reversed_at"
    t.string   "reversed_note"
    t.integer  "order_id"
    t.integer  "show_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
    t.integer  "discount_id"
    t.integer  "original_price"
    t.integer  "service_fee",     :default => 0
    t.integer  "pass_id"
  end

  add_index "items", ["created_at"], :name => "index_items_on_created_at"
  add_index "items", ["discount_id"], :name => "index_items_on_discount_id"
  add_index "items", ["order_id"], :name => "index_items_on_order_id"
  add_index "items", ["product_id", "product_type"], :name => "index_items_on_product_id_and_product_type"
  add_index "items", ["product_id"], :name => "index_items_on_product_id"
  add_index "items", ["product_type"], :name => "index_items_on_product_type"
  add_index "items", ["show_id"], :name => "index_items_on_show_id"

  create_table "items_view", :id => false, :force => true do |t|
    t.integer  "order_id",             :default => 0
    t.string   "order_type"
    t.integer  "item_id",              :default => 0,  :null => false
    t.string   "product_type"
    t.integer  "organization_id",      :default => 0
    t.string   "organization_name"
    t.string   "time_zone"
    t.datetime "created_at"
    t.string   "payment_method"
    t.integer  "person_id",            :default => 0
    t.datetime "datetime"
    t.integer  "show_id",              :default => 0
    t.integer  "event_id",             :default => 0
    t.string   "event_name"
    t.integer  "price"
    t.integer  "nongift_amount",       :default => 0
    t.text     "special_instructions"
    t.text     "notes"
    t.string   "creator",              :default => ""
  end

  create_table "job_monitors", :force => true do |t|
    t.integer  "organization_id",                    :null => false
    t.boolean  "finished",        :default => false
    t.boolean  "failed",          :default => false
    t.datetime "finished_at"
    t.string   "file_url"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "kits", :force => true do |t|
    t.string   "state"
    t.string   "type"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "settings"
  end

  create_table "list_groupings", :force => true do |t|
    t.integer  "subscribed_list_id"
    t.integer  "mailchimp_id"
    t.string   "name"
    t.string   "group"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "list_groupings", ["subscribed_list_id"], :name => "index_list_groupings_on_subscribed_list_id"

  create_table "members", :force => true do |t|
    t.string   "email",                                :default => "", :null => false
    t.string   "encrypted_password",                   :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "invitation_token",       :limit => 60
    t.datetime "invitation_sent_at"
    t.datetime "suspended_at"
    t.string   "suspension_reason"
    t.integer  "organization_id"
    t.integer  "person_id"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
    t.string   "member_number",                                        :null => false
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.string   "uuid"
    t.string   "qr_code_file_name"
    t.string   "qr_code_content_type"
    t.integer  "qr_code_file_size"
    t.datetime "qr_code_updated_at"
  end

  add_index "members", ["email"], :name => "index_members_on_email", :unique => true
  add_index "members", ["invitation_token"], :name => "index_members_on_invitation_token", :unique => true
  add_index "members", ["organization_id"], :name => "index_members_on_organization_id"
  add_index "members", ["person_id"], :name => "index_members_on_person_id"
  add_index "members", ["reset_password_token"], :name => "index_members_on_reset_password_token", :unique => true
  add_index "members", ["uuid"], :name => "index_members_on_uuid", :unique => true

  create_table "membership_types", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "fee"
    t.integer  "number_of_tickets"
    t.string   "plan"
    t.boolean  "on_sale"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.integer  "segment_id"
    t.integer  "organization_id"
    t.text     "description"
    t.datetime "created_at",                                                                     :null => false
    t.datetime "updated_at",                                                                     :null => false
    t.string   "type",                                     :default => "SeasonalMembershipType"
    t.integer  "duration"
    t.string   "period",                     :limit => 11
    t.datetime "sales_start_at"
    t.datetime "sales_end_at"
    t.text     "thanks_copy"
    t.text     "invitation_email_text_copy"
    t.boolean  "hide_fee",                                 :default => false
    t.integer  "renewal_price",                            :default => 0
    t.boolean  "offer_renewal",                            :default => false
    t.integer  "limit_per_transaction",                    :default => 1
    t.integer  "advanced_search_segment_id"
  end

  add_index "membership_types", ["organization_id"], :name => "index_membership_types_on_organization_id"

  create_table "memberships", :force => true do |t|
    t.integer  "organization_id"
    t.integer  "membership_type_id"
    t.integer  "member_id"
    t.integer  "cart_id"
    t.integer  "price"
    t.integer  "sold_price"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.integer  "service_fee",           :default => 0
    t.text     "welcome_message"
    t.boolean  "send_email",            :default => true
    t.integer  "cart_price"
    t.integer  "total_paid"
    t.integer  "changed_membership_id"
  end

  add_index "memberships", ["member_id"], :name => "index_memberships_on_member_id"
  add_index "memberships", ["membership_type_id"], :name => "index_memberships_on_membership_type_id"
  add_index "memberships", ["organization_id"], :name => "index_memberships_on_organization_id"

  create_table "notes", :force => true do |t|
    t.integer  "person_id"
    t.integer  "user_id"
    t.string   "type"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "occurred_at"
    t.integer  "organization_id"
    t.boolean  "starred",         :default => false
  end

  add_index "notes", ["organization_id"], :name => "index_notes_on_organization_id"
  add_index "notes", ["person_id", "organization_id"], :name => "index_notes_on_person_id_and_organization_id"
  add_index "notes", ["person_id"], :name => "index_notes_on_person_id"
  add_index "notes", ["user_id"], :name => "index_notes_on_user_id"

  create_table "orders", :force => true do |t|
    t.string   "transaction_id"
    t.integer  "price"
    t.integer  "organization_id"
    t.integer  "person_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "old_service_fee"
    t.string   "details"
    t.string   "type"
    t.string   "payment_method"
    t.text     "special_instructions"
    t.text     "donor_instructions"
    t.integer  "import_id"
    t.datetime "deleted_at"
    t.text     "notes"
    t.datetime "revenue_applies_at",   :default => '2013-07-23 01:43:27', :null => false
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.string   "check_number"
    t.integer  "creator_id"
  end

  add_index "orders", ["created_at"], :name => "index_orders_on_created_at"
  add_index "orders", ["creator_id"], :name => "index_orders_on_creator_id"
  add_index "orders", ["organization_id"], :name => "index_orders_on_organization_id"
  add_index "orders", ["person_id"], :name => "index_orders_on_person_id"
  add_index "orders", ["transaction_id"], :name => "index_orders_on_transaction_id"

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.string   "time_zone"
    t.string   "legal_organization_name"
    t.string   "ein"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lifetime_value",          :default => 0
    t.string   "email"
    t.string   "cached_slug"
    t.integer  "last_member_number",      :default => 0
    t.string   "country"
    t.string   "zip"
    t.string   "state"
    t.string   "phone_number"
    t.string   "discipline"
    t.integer  "fiscal_month"
    t.integer  "fiscal_day"
  end

  add_index "organizations", ["cached_slug"], :name => "index_organizations_on_cached_slug"

  create_table "pass_types", :force => true do |t|
    t.integer  "organization_id"
    t.integer  "segment_id"
    t.string   "name"
    t.integer  "price"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "sales_start_at"
    t.datetime "sales_end_at"
    t.boolean  "on_sale"
    t.integer  "tickets_allowed"
    t.boolean  "hide_fee"
    t.text     "description"
    t.text     "thanks_copy"
    t.text     "email_copy"
    t.datetime "deleted_at"
    t.integer  "advanced_search_segment_id"
  end

  add_index "pass_types", ["organization_id"], :name => "index_pass_types_on_organization_id"

  create_table "passes", :force => true do |t|
    t.integer  "organization_id"
    t.integer  "person_id"
    t.integer  "cart_id"
    t.integer  "pass_type_id"
    t.string   "pass_code"
    t.integer  "price"
    t.integer  "sold_price"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.integer  "service_fee"
    t.boolean  "send_email"
    t.integer  "tickets_allowed"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "passes", ["organization_id"], :name => "index_passes_on_organization_id"
  add_index "passes", ["pass_type_id"], :name => "index_passes_on_pass_type_id"
  add_index "passes", ["person_id"], :name => "index_passes_on_person_id"

  create_table "people", :force => true do |t|
    t.integer  "organization_id"
    t.string   "state"
    t.string   "type",                  :default => "Individual", :null => false
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.string   "website"
    t.boolean  "dummy",                 :default => false,        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subtype",               :default => "Individual", :null => false
    t.string   "twitter_handle"
    t.string   "facebook_url"
    t.string   "linked_in_url"
    t.integer  "import_id"
    t.datetime "deleted_at"
    t.integer  "lifetime_value",        :default => 0
    t.boolean  "do_not_email",          :default => false
    t.string   "salutation"
    t.string   "title"
    t.text     "old_subscribed_lists"
    t.integer  "lifetime_donations",    :default => 0
    t.integer  "lifetime_pledges",      :default => 0
    t.string   "middle_name"
    t.string   "suffix"
    t.integer  "lifetime_ticket_value", :default => 0
    t.integer  "household_id"
    t.integer  "lifetime_memberships",  :default => 0
    t.integer  "birth_day"
    t.integer  "birth_month"
    t.integer  "birth_year"
    t.boolean  "do_not_call",           :default => false
    t.text     "opted_out_lists"
    t.string   "nickname"
    t.string   "listing_name"
    t.string   "maiden_name"
  end

  add_index "people", ["household_id"], :name => "index_people_on_household_id"
  add_index "people", ["organization_id", "email"], :name => "index_people_on_organization_id_and_email"
  add_index "people", ["organization_id"], :name => "index_people_on_organization_id"

  create_table "phones", :force => true do |t|
    t.string   "kind"
    t.string   "number"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["person_id"], :name => "index_phones_on_person_id"

  create_table "relations", :force => true do |t|
    t.string   "description"
    t.boolean  "person_can_be_individual", :default => false
    t.boolean  "person_can_be_company",    :default => false
    t.boolean  "other_can_be_individual",  :default => false
    t.boolean  "other_can_be_company",     :default => false
    t.integer  "inverse_id"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "person_id",                      :null => false
    t.integer  "relation_id",                    :null => false
    t.integer  "other_id",                       :null => false
    t.integer  "inverse_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "starred",     :default => false
    t.datetime "deleted_at"
  end

  create_table "scheduled_pledge_payments", :force => true do |t|
    t.integer  "amount"
    t.integer  "amount_received"
    t.integer  "organization_id"
    t.integer  "order_id"
    t.integer  "donation_id"
    t.integer  "person_id"
    t.date     "date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "searches", :force => true do |t|
    t.integer  "organization_id",                             :null => false
    t.string   "zip"
    t.string   "state"
    t.integer  "event_id"
    t.integer  "min_lifetime_value"
    t.integer  "min_donations_amount"
    t.integer  "max_lifetime_value"
    t.integer  "max_donations_amount"
    t.datetime "min_donations_date"
    t.datetime "max_donations_date"
    t.integer  "campaign_id"
    t.integer  "appeal_id"
    t.string   "gift_type"
    t.string   "tagging"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "discount_code"
    t.string   "person_subtype"
    t.integer  "membership_type_id"
    t.string   "membership_status"
    t.datetime "membership_starts_at"
    t.datetime "membership_ends_at"
    t.integer  "year"
    t.boolean  "has_purchased_for",         :default => true
    t.datetime "show_date_start"
    t.datetime "show_date_end"
    t.integer  "pass_type_id"
    t.integer  "relation_id"
    t.boolean  "output_individuals",        :default => true
    t.boolean  "output_households",         :default => true
    t.boolean  "output_companies",          :default => true
    t.datetime "min_membership_start_date"
    t.datetime "max_membership_start_date"
    t.datetime "min_membership_end_date"
    t.datetime "max_membership_end_date"
    t.integer  "birth_day"
    t.integer  "birth_month"
    t.integer  "birth_year"
    t.text     "mailchimp_lists"
    t.text     "not_mailchimp_lists"
    t.text     "groupings"
    t.text     "not_groupings"
    t.boolean  "has_donated",               :default => true
  end

  add_index "searches", ["organization_id"], :name => "index_searches_on_organization_id"

  create_table "seats", :force => true do |t|
    t.integer  "chart_id",                                :null => false
    t.integer  "row_index"
    t.integer  "col_index"
    t.string   "row_label"
    t.string   "col_label"
    t.string   "label"
    t.boolean  "available"
    t.boolean  "killed"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.boolean  "house_hold",           :default => false
    t.boolean  "development_hold",     :default => false
    t.boolean  "tech_hold",            :default => false
    t.boolean  "contractual_hold",     :default => false
    t.boolean  "person_hold",          :default => false
    t.boolean  "press_hold",           :default => false
    t.boolean  "wheelchair",           :default => false
    t.boolean  "wheelchair_companion", :default => false
    t.boolean  "aisle",                :default => false
    t.string   "seat_note"
    t.string   "hold_note"
    t.integer  "held_for_id"
  end

  add_index "seats", ["held_for_id"], :name => "index_seats_on_held_for_id"

  create_table "sections", :force => true do |t|
    t.text    "name"
    t.integer "capacity"
    t.integer "chart_id"
    t.text    "description"
    t.boolean "storefront",  :default => true
    t.boolean "box_office",  :default => true
    t.boolean "members",     :default => true, :null => false
  end

  add_index "sections", ["chart_id"], :name => "index_sections_on_chart_id"

  create_table "segments", :force => true do |t|
    t.string   "name",            :null => false
    t.integer  "organization_id", :null => false
    t.integer  "search_id",       :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "segments", ["organization_id"], :name => "index_segments_on_organization_id"
  add_index "segments", ["search_id"], :name => "index_segments_on_search_id"

  create_table "shows", :force => true do |t|
    t.string   "state"
    t.datetime "datetime"
    t.integer  "event_id"
    t.integer  "chart_id"
    t.integer  "organization_id"
    t.string   "uuid"
    t.text     "cached_stats"
  end

  add_index "shows", ["event_id"], :name => "index_shows_on_event_id"
  add_index "shows", ["organization_id"], :name => "index_shows_on_organization_id"
  add_index "shows", ["uuid"], :name => "index_shows_on_uuid"

  create_table "slugs", :force => true do |t|
    t.string   "scope"
    t.string   "slug"
    t.integer  "record_id"
    t.datetime "created_at"
  end

  add_index "slugs", ["scope", "record_id", "created_at"], :name => "index_slugs_on_scope_and_record_id_and_created_at"
  add_index "slugs", ["scope", "record_id"], :name => "index_slugs_on_scope_and_record_id"
  add_index "slugs", ["scope", "slug", "created_at"], :name => "index_slugs_on_scope_and_slug_and_created_at"
  add_index "slugs", ["scope", "slug"], :name => "index_slugs_on_scope_and_slug"

  create_table "soft_credits", :force => true do |t|
    t.integer  "amount"
    t.integer  "donation_id"
    t.integer  "person_id"
    t.integer  "organization_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "subscribed_lists", :force => true do |t|
    t.integer  "person_id"
    t.string   "list_id"
    t.boolean  "confirmed",  :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "bounced",    :default => false
  end

  create_table "suggested_households", :force => true do |t|
    t.string   "ids",                                :null => false
    t.boolean  "ignored",         :default => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "organization_id"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"
  add_index "taggings", ["taggable_type", "taggable_id", "context"], :name => "index_taggings_on_taggable_type_and_taggable_id_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "ticket_types", :force => true do |t|
    t.integer  "section_id",                                :null => false
    t.integer  "show_id"
    t.string   "name",                                      :null => false
    t.integer  "price",                                     :null => false
    t.integer  "limit"
    t.boolean  "storefront",             :default => true,  :null => false
    t.boolean  "box_office",             :default => true,  :null => false
    t.boolean  "members",                :default => true,  :null => false
    t.text     "description"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "membership_type_id"
    t.integer  "tickets_per_membership"
    t.boolean  "member_ticket",          :default => false
    t.datetime "deleted_at"
    t.text     "receipt_details"
  end

  add_index "ticket_types", ["membership_type_id"], :name => "index_ticket_types_on_membership_type_id"
  add_index "ticket_types", ["section_id"], :name => "index_ticket_types_on_section_id"
  add_index "ticket_types", ["show_id"], :name => "index_ticket_types_on_show_id"

  create_table "ticket_types_seats", :force => true do |t|
    t.integer "ticket_type_id"
    t.integer "seat_id"
  end

  add_index "ticket_types_seats", ["seat_id"], :name => "index_ticket_types_seats_on_seat_id"
  add_index "ticket_types_seats", ["ticket_type_id"], :name => "index_ticket_types_seats_on_ticket_type_id"

  create_table "tickets", :force => true do |t|
    t.string   "venue"
    t.string   "state"
    t.integer  "sold_price"
    t.datetime "sold_at"
    t.integer  "buyer_id"
    t.integer  "show_id"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cart_id"
    t.integer  "section_id"
    t.integer  "cart_price"
    t.integer  "discount_id"
    t.integer  "ticket_type_id"
    t.boolean  "validated",            :default => false
    t.integer  "validated_action_id"
    t.integer  "service_fee",          :default => 0
    t.string   "qr_code_file_name"
    t.string   "qr_code_content_type"
    t.integer  "qr_code_file_size"
    t.datetime "qr_code_updated_at"
    t.string   "uuid",                                    :null => false
    t.integer  "pass_id"
    t.datetime "processing_at"
    t.integer  "seat_id"
  end

  add_index "tickets", ["buyer_id"], :name => "index_tickets_on_buyer_id"
  add_index "tickets", ["cart_id"], :name => "index_tickets_on_cart_id"
  add_index "tickets", ["discount_id"], :name => "index_tickets_on_discount_id"
  add_index "tickets", ["organization_id"], :name => "index_tickets_on_organization_id"
  add_index "tickets", ["pass_id"], :name => "index_tickets_on_pass_id"
  add_index "tickets", ["seat_id"], :name => "index_tickets_on_seat_id"
  add_index "tickets", ["section_id", "show_id", "state"], :name => "index_tickets_on_section_id_and_show_id_and_state"
  add_index "tickets", ["show_id"], :name => "index_tickets_on_show_id"
  add_index "tickets", ["state"], :name => "index_tickets_on_state"
  add_index "tickets", ["ticket_type_id"], :name => "index_tickets_on_ticket_type_id"
  add_index "tickets", ["uuid"], :name => "index_tickets_on_uuid", :unique => true
  add_index "tickets", ["validated_action_id"], :name => "index_tickets_on_validated_action_id"

  create_table "user_memberships", :force => true do |t|
    t.integer "user_id"
    t.integer "organization_id"
    t.boolean "organization_administrator",    :default => false
    t.boolean "manager",                       :default => false
    t.boolean "general_associate",             :default => false
    t.boolean "box_office_associate",          :default => false
    t.boolean "receive_daily_sales_report",    :default => false
    t.boolean "receive_donation_notification", :default => false
    t.boolean "receive_door_list",             :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",   :null => false
    t.string   "encrypted_password",     :limit => 128, :default => ""
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "customer_id"
    t.datetime "suspended_at"
    t.string   "suspension_reason"
    t.string   "invitation_token",       :limit => 60
    t.datetime "invitation_sent_at"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.boolean  "newsletter_emails",                     :default => true, :null => false
    t.string   "mailchimp_message"
    t.datetime "reset_password_sent_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "authentication_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["invitation_token"], :name => "index_users_on_invitation_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "venues", :force => true do |t|
    t.integer "organization_id"
    t.string  "name"
    t.string  "address1"
    t.string  "address2"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.string  "country"
    t.string  "time_zone"
    t.string  "phone"
    t.float   "lat"
    t.float   "long"
  end

  create_table "widget_requests", :force => true do |t|
    t.string   "request_uri",  :null => false
    t.string   "referer_host", :null => false
    t.string   "referer_uri",  :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "widget_requests", ["referer_host"], :name => "index_widget_requests_on_referer_host"

end
