class Routes
  base_path = File.expand_path("..", __FILE__)
  require 'pry'    #pry-byebugライブラリをインストール
  require "#{base_path}/controller/task_controller.rb"

  puts "アクションを選択してください"
  action = gets.chomp

  if action == 'index'
    puts TaskController.index
  elsif action == 'show'
    puts TaskController.show
  elsif action == 'create'
    puts TaskController.create
  elsif action == 'update'
    puts TaskController.update
  elsif action == 'destroy'
    puts TaskController.destory
  end

end
