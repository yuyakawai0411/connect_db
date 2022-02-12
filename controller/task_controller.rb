class TaskController
  base_path = File.expand_path("../../", __FILE__)
  require "#{base_path}/model/task.rb"

  def self.index
    tasks = Task.all
  end

  def self.show
    puts 'タスク名を入力してください'
    task_name = gets.chomp
    # task = Task.find_by(task_name).memos
    memos = Task.new.memos(task_name)
  end

end