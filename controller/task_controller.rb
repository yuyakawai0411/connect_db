class TaskController
  require '/Users/kawaiyuya/projects/Basic_ruby/connect_db/model/task_model.rb'

  def self.index
    task_table = Task.all
  end

end