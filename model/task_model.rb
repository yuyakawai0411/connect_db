class Task
  require 'pry'    #pry-byebugライブラリをインストール
  require 'mysql'  #ruby-mysqlライブラリをインストール

  # mysqlコネクション
  def self.all
    connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
    connection.query("set character set utf8")
    tasks = connection.query("SELECT * FROM task")
    result = tasks.map do |task| 
      data = {
        title: task[1],
        category: task[2]
      }
    end
    return result
  end
  
end