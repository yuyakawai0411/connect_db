class TaskController
  base_path = File.expand_path("../../", __FILE__)
  require "#{base_path}/model/task_model.rb"

  def self.index
    task_table = Task.all
  end

end