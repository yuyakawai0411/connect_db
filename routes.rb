class Routes
  require 'pry'    #pry-byebugライブラリをインストール
  require '/Users/kawaiyuya/projects/Basic_ruby/connect_db/controller/task_controller.rb'

  puts "アクションを選択してください"
  acction = gets.chomp

  if acction == 'index'
    puts TaskController.index
  end

end
