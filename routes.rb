class Routes
  base_path = File.expand_path("..", __FILE__)
  require 'pry'    #pry-byebugライブラリをインストール
  require "#{base_path}/controller/task_controller.rb"

  puts "アクションを選択してください"
  acction = gets.chomp

  if acction == 'index'
    puts TaskController.index
  end

end
