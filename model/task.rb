class Task
  require 'pry'    #pry-byebugライブラリをインストール
  require 'mysql'  #ruby-mysqlライブラリをインストール


  def self.all
    connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
    connection.query("set character set utf8")
    records = connection.query("SELECT * FROM #{self.name}")
    result = records.map do |record| 
      data = {
        title: record[1],
        category: record[2]
      }
    end
    return result
  end

  def self.find_by(params)
    connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
    connection.query("set character set utf8")
    records = connection.query("SELECT * FROM #{self.name} WHERE title=#{params}")
    result = records.map do |record| 
      data = {
        title: record[1],
        category: record[2]
      }
    end
    return result
  end

  def memos(params)
    connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
    connection.query("set character set utf8")
    records = connection.query("SELECT MM.text FROM TASK AS TS INNER JOIN MEMO AS MM ON TS.id = MM.task_id WHERE TS.title = '#{params}'")
    result = records.map do |record| 
      data = {
        memo: record[0]
      }
    end
    return result
    # 集合演算
    # サブクエリ、相関サブクエリ
  end
  
end