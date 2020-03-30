# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  - ruby 2.5.1

* System dependencies
  - Rails 5.2.4.2

* Name
  - Corner

* Overview
  - タスクと学習した知識を管理するアプリケーション
  - 同一の入力フォームから異なるテーブルへデータ保存 => タスク(短期メモ)or学習した知識(長期保存)
  - タスクとして登録したものも後から別テーブルへ保存可能
  - 入力したURLは自動でハイパーリンク化

* Intention
  - タスクと学習の一元管理
  - 学習内容のアウトプット(備忘録)
  - よりスピーディーな必要知識の検索
* DEMO
  - 新規作成後タスク登録
  ![image](https://user-images.githubusercontent.com/60601764/77876464-03a09700-728e-11ea-88b9-977c40d78de6.png)
  - 作成したタスクを編集し備忘録として保存
  ![image](https://user-images.githubusercontent.com/60601764/77876490-12874980-728e-11ea-9bc1-88fda3664b7c.png)
  - 備忘録から外部リンク
  ![image](https://user-images.githubusercontent.com/60601764/77876505-1f0ba200-728e-11ea-8b3a-fac80dd0618f.png)

* point
  - 1つの入力フォームから保存先を選択できる
  - 一時的なメモも編集して知識として別テーブルに保存できる

* TO be implemented
  - キーワード検索機能実装
  - 複数画像保存
  - 添付URLのOGP表示

* Database

## tasksテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|
|content|text|

### Association

## articlesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|
|content|text|

### Association