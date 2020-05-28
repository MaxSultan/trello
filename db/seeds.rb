#   create_table "boards", force: :cascade do |t|
#     t.string "name"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "lists", force: :cascade do |t|
#     t.string "name"
#     t.bigint "board_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["board_id"], name: "index_lists_on_board_id"
#   end

#   create_table "tasks", force: :cascade do |t|
#     t.string "name"
#     t.bigint "list_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["list_id"], name: "index_tasks_on_list_id"
#   end

Board.create(name:'Main Board')

5.times do 
    List.create(
        name: Faker::Hacker.noun,
        board_id: 1 
    )
    5.times do
        Task.create(
            name: Faker::Marketing.buzzwords,
            list_id: rand(5)
        )
    end 
end 

puts "seeded"