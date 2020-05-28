class List < ApplicationRecord
  has_many :tasks
  belongs_to :board

  def show_tasks(list_id)
    # list.tasks.each_with_index{|hash, i| hash[i][:name]}
    Task.find_by_sql([
      "SELECT name FROM tasks AS t
      WHERE t.list_id = ?",
      list_id
    ])
  end 
end
