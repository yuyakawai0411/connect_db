# 機能
- Get
  - [x]Task一覧を表示できる
- Show
  - [x]Taskを選択したら、そのTaskに紐ずくMemoを表示できる
- Create
  - Taskを作成できる
  - Memoを作成できる
- Update
  - Taskを編集できる
  - Memoを編集できる
- Delete
  - Taskを削除できる
  - Memoを削除できる

# 作成手順
1. データベースのセットアップ
  - [x]データベース作成
  - [x]テーブルの作成
  - [x]サンプルデータの挿入
2. アダプターを導入
  - [x] gem install bundler
  - [x] bundle init
  - [x] gem ruby-mysqlをインストール
  - [x] irbでDBと接続テスト
3. モデルを作成(外部入力なしに、自動で値を取ってくる)
  - [x] データベースをオブジェクトに格納
  - [x] オブジェクトに対してクエリを生成
4. ターミナルから入力できるインターフェースを作成
  - [x] getsメソッドを使って入力待ちにする
5. バリデーション、コールバックを作成

# 参考文献
- モデルの書き方
- インターフェース