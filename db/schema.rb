# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100719135117) do

  create_table "bdash_pushes", :force => true do |t|
    t.string   "push_comment"
    t.integer  "user_id"
    t.integer  "post_id"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_accounts", :force => true do |t|
    t.string   "blog_account_username"
    t.string   "blog_account_password"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", :force => true do |t|
    t.string   "blog_name"
    t.integer  "user_id"
    t.integer  "blogAccount_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "tags"
    t.boolean  "draft_flag"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
  end

end
