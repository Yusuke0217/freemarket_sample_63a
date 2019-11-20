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


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|name|string|null: false|名前
|password|string|null: false|パスワード
|mail|string|null: false|
|phone-number|integer|null: false|電話番号
|cradit-number|integer|null: false|クレジット番号
|prefectures|string|null: false|都道府県
|city|string|null: false|市区町村
|address|integer|null: false|番地
|postal-code|integer|null: false|郵便番号
|building-name|string|null: false|建物名
|birthday-year|integer|null: false|誕生年
|birthday-month|integer|null: false|月
|birthday-day|integer|null: false|日
|first-name|string|null: false|姓（漢字）
|first-name-kana|string|null: false|姓（仮名）
|last-name|string|null: false|名（漢字）
|last-name-kana|string|null: false|名（仮名）
|exhibit-product|string|null: false|出品した商品
|exhibit-number|string|null: false|出品数
|exhibit-now|string|null: false|出品中
|exhibit-trading|string|null: false|取引中(出品)
|exhibit-sold|string|null: false|売却済み
|like|integer|null: false|いいね！
|points|integer|null: false|ポイント
|earnings|integer|null: false|売上金
|past transaction|string|null: false|過去の取引
|purchase-product|string|null: false|購入した商品
|purchase-trading|string|null: false|取引中(購入)
|purchase-past|string|null: false|過去の購入品
### Association
- has_many :products
- has_many :comments
- has_many :like-product 商品へのいいね
- has_many :report-product 商品の報告
- has_many :report-comment コメントの報告
- has_many :products, through: :like-product
- has_many :products, through: :report-product
