# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Mercri DB設計

## products(商品)テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|||null: false|　(商品名)
|brand||string|　(ブランド)
|user_id|integer|null: false, foreign_key: true|
|size||integer||null: false|　(サイズ)
|condition||string||null: false|　(状態)
|shipping_charge||string||null: false|　(配送料の負担)
|shipping_how||string||null: false|　(配送方法)
|shipping_place||stringext||null: false|　(配送元地域)
|shipping_date||integer||null: false|　(発送日の目安)
|price||integer||null: false, foreign_key: true|　(値段)
|text||text|　(テキスト)
### Association
- has_many :users, through: :product-like, :product-report
- belongs_to :product-report
- belongs_to :product-like
- has_many :comments
## comments(コメント)テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|
|text|text|null: false||null: false|　(コメント文)

### Association
- belongs_to :user
- belongs_to :product
- has_many :comment-report

## product-like(いいね)テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product

## product-report(不適切商品報告)テーブル
Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product

## comment-report(不適切コメント報告)テーブル
olumn|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|comment_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :comment
