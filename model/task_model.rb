class Task
require 'pry'    #pry-byebugライブラリをインストール
require 'mysql'  #ruby-mysqlライブラリをインストール

# mysqlコネクション
connection = Mysql::connect("127.0.0.1", "root", "password", "connect_db")
connection.query("set character set utf8")

puts "検索するテーブルを選択してください"
table_name = gets

puts "欲しい情報のカラムを選択てください"
column_name = gets

# クエリ発行
result = connection.query("SELECT #{column_name} FROM #{table_name}")

# 検索結果を表示
result_arry = result.map do |r| 
  data = {
    title: r[1],
    category: r[2]
  }
end

puts result_arry
  
end