class Task
  require 'pry'    #pry-byebugライブラリをインストール
  require 'mysql'  #ruby-mysqlライブラリをインストール

  # データ全件取得
  def self.all
    connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
    connection.query("set character set utf8")
    records = connection.query("SELECT TASK.id, TASK.title, TASK.category FROM #{self.name}")
    result = records.map do |record| 
      data = {
        id: record[0],
        title: record[1],
        category: record[2]
      }
    end
    return result
  end

  # データ1件取得
  def self.find_by(task_id)
    connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
    connection.query("set character set utf8")
    records = connection.query("SELECT * FROM #{self.name} WHERE id=#{task_id}")
    result = records.map do |record| 
      data = {
        title: record[1],
        category: record[2]
      }
    end
    return result
  end

  # 新規データ作成
  def self.create(task_name, category)
    connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
    connection.query("set character set utf8")
    records = connection.query("INSERT INTO TASK (title,category) VALUES ('#{task_name}','#{category}')")
    return result = '登録できました'
  end

  # 既存データ編集
  def self.update(task_id, task_name, category_number)
    connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
    connection.query("set character set utf8")
    records = connection.query("UPDATE TASK SET title='#{task_name}',category='#{category_number}' WHERE id='#{task_id}'")
    return result = '更新できました'
  end

  # 既存データ削除
  def self.destroy(task_id)
    connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
    connection.query("set character set utf8")
    records = connection.query("DELETE FROM TASK WHERE id='#{task_id}'")
    return result = '削除しました'
  end

  # アソシエーション
  def memos(params)
    connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
    connection.query("set character set utf8")
    records = connection.query("SELECT MM.text FROM TASK AS TS INNER JOIN MEMO AS MM ON TS.id = MM.task_id WHERE TS.title='#{params}'")
    result = records.map do |record| 
      data = {
        memo: record[0]
      }
    end
    return result
  end
  
end