class TaskController
  base_path = File.expand_path("../../", __FILE__)
  require "#{base_path}/model/task.rb"

  def self.index
    tasks = Task.all
  end

  def self.show
    puts '検索するタスクidを入力してください'
    task_id = gets.chomp
    # task = Task.find_by(task_name).memos
    memos = Task.new.memos(task_id)
  end

  def self.create
    puts '登録するタスク名を入力してください'
    task_name = gets.chomp.to_s
    puts '登録するカテゴリーを入力してください'
    categories = {'仕事':1, '生活':2, '趣味':3 }
    puts categories
    category_number = gets.chomp
    task = Task.create(task_name, category_number)
  end

  def self.update
    puts '更新するタスクidを入力してください'
    task_id = gets.chomp
    puts '更新するタスク名を入力してください'
    task_name = gets.chomp.to_s
    puts '更新するカテゴリーを入力してください'
    categories = {'仕事':1, '生活':2, '趣味':3 }
    puts categories
    category_number = gets.chomp
    task = Task.update(task_id, task_name, category_number)
  end

  def self.destory
    puts '削除するタスクidを入力してください'
    task_id = gets.chomp
    task = Task.destroy(task_id)
  end

end