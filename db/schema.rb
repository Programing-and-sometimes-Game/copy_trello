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

ActiveRecord::Schema.define(version: 2019_12_05_075613) do

  create_table "achieved_tasks", force: :cascade do |t|
    t.integer "check_list_item_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["check_list_item_id"], name: "index_achieved_tasks_on_check_list_item_id"
    t.index ["user_id"], name: "index_achieved_tasks_on_user_id"
  end

  create_table "add_user_to_boards", force: :cascade do |t|
    t.boolean "activation", default: false
    t.integer "user_id"
    t.integer "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_add_user_to_boards_on_board_id"
    t.index ["user_id"], name: "index_add_user_to_boards_on_user_id"
  end

  create_table "board_background_images", force: :cascade do |t|
    t.text "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "board_inviting_mails", force: :cascade do |t|
    t.text "description"
    t.integer "user_id"
    t.integer "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_board_inviting_mails_on_board_id"
    t.index ["user_id"], name: "index_board_inviting_mails_on_user_id"
  end

  create_table "boards", force: :cascade do |t|
    t.string "board_name"
    t.string "board_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "check_list_items", force: :cascade do |t|
    t.string "check_list_item_name"
    t.integer "check_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["check_list_id"], name: "index_check_list_items_on_check_list_id"
  end

  create_table "check_lists", force: :cascade do |t|
    t.string "check_list_name"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_check_lists_on_task_id"
  end

  create_table "group_achieved_tasks", force: :cascade do |t|
    t.integer "group_check_list_item_id"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_check_list_item_id"], name: "index_group_achieved_tasks_on_group_check_list_item_id"
    t.index ["group_id"], name: "index_group_achieved_tasks_on_group_id"
  end

  create_table "group_boards", force: :cascade do |t|
    t.string "group_board_name"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_boards_on_group_id"
  end

  create_table "group_check_list_items", force: :cascade do |t|
    t.string "group_check_list_item_name"
    t.integer "group_check_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_check_list_id"], name: "index_group_check_list_items_on_group_check_list_id"
  end

  create_table "group_check_lists", force: :cascade do |t|
    t.string "group_check_list_name"
    t.integer "group_task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_task_id"], name: "index_group_check_lists_on_group_task_id"
  end

  create_table "group_inviting_mails", force: :cascade do |t|
    t.text "description"
    t.integer "group_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_inviting_mails_on_group_id"
    t.index ["user_id"], name: "index_group_inviting_mails_on_user_id"
  end

  create_table "group_lists", force: :cascade do |t|
    t.string "group_list_name"
    t.integer "group_board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_board_id"], name: "index_group_lists_on_group_board_id"
  end

  create_table "group_members", force: :cascade do |t|
    t.boolean "activation", default: false
    t.integer "user_id"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_members_on_group_id"
    t.index ["user_id"], name: "index_group_members_on_user_id"
  end

  create_table "group_tagged_tasks", force: :cascade do |t|
    t.integer "group_task_id"
    t.integer "group_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_tag_id"], name: "index_group_tagged_tasks_on_group_tag_id"
    t.index ["group_task_id"], name: "index_group_tagged_tasks_on_group_task_id"
  end

  create_table "group_tags", force: :cascade do |t|
    t.string "group_tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_tasks", force: :cascade do |t|
    t.string "task_name"
    t.text "description"
    t.datetime "deadline_start"
    t.datetime "deadline_end"
    t.integer "group_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_list_id"], name: "index_group_tasks_on_group_list_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "group_name"
    t.text "description"
    t.text "group_image"
    t.integer "owner_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "list_name"
    t.integer "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_lists_on_board_id"
  end

  create_table "tagged_tasks", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_tagged_tasks_on_tag_id"
    t.index ["task_id"], name: "index_tagged_tasks_on_task_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_name"
    t.text "description"
    t.datetime "deadline_start"
    t.datetime "deadline_end"
    t.integer "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_tasks_on_list_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.string "password"
    t.text "profile_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
