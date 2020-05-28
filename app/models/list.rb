class List < ApplicationRecord
  belongs_to :board
  has_many :tasks, dependent: :destroy

  def show_tasks(list_id)
    # list.tasks.each_with_index{|hash, i| hash[i][:name]}
    Task.find_by_sql([
      "SELECT name FROM tasks AS t
      WHERE t.list_id = ?",
      list_id
    ])
  end 
end
