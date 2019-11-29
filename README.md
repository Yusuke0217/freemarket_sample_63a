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
|name|string|null: false|  名前
|nickname|string|null: false|  ニックネーム
|password|string|null: false, unique: true|  パスワード
|email|string|null: false, unique: true|  メールアドレス
|phone-number|integer|null: false|  電話番号
|prefectures|string|null: false|  都道府県
|city|string|null: false|  市区町村
|address|integer|null: false|  番地
|postal-code|integer|null: false|  郵便番号
|building-name|string||  建物名
|birthday-year|integer|null: false|  誕生年
|birthday-month|integer|null: false|  月
|birthday-day|integer|null: false|  日
|first-name|string|null: false, foreign_key: true|  姓（漢字）
|first-name-kana|string|null: false, foreign_key: true|  姓（仮名）
|last-name|string|null: false, foreign_key: true|  名（漢字）
|last-name-kana|string|null: false, foreign_key: true|  名（仮名）
|exhibit-product|string||  出品した商品
|exhibit-number|integer||  出品数
<!-- |exhibit-now|string||  出品中  -->
<!-- |exhibit-trading|string||  取引中(出品) -->
<!-- |exhibit-sold|string||  売却済み -->
|points|integer||  ポイント
|like|integer||  いいね！
|earnings|integer||  売上金
|purchase_history_id|integer|null: false|  買い手id
|sales_history_id|integer|null: false|  売り手id

### Association
- has_many :products, through: :purchase-history
- has_many :products, through: :sales-history
- has_many :comments
- has_many :comment-report コメントの報告
- has_many :products, through: :like-product商品へのいいね
- has_many :products, through: :product-report商品の報告
- has_many :comments, through: :comment-report
- belongs_to :credit


## products テーブル
|Column|Type|Options|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| name | string| null：false | （商品名）
|size|integer| null：true | （サイズ）
|condition|string| null：false | （状態）
| shipping_charge |string | null：false | （配送料の負担）
| shipping_how |string | null：false | （配送方法）
| shipping_place|string| null：false | （配送元地域）
| shipping_date | integer | null：false | （発送日の目安）
|price|integer|null：false、foreign_key：true | （値段）
| text |string|| （テキスト）

### Association
- belongs_to :user
- has_many :comments
- has_many :photos
- has_many :users, through: :product_like
- has_many :users, through: :product_report
- has_many :users, through: :purchase-history
- has_many :users, through: :sales-history

##  comments（コメント）テーブル
|Column|Type|Options|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| product_id | integer | null：false、foreign_key：true |
| text | text | null：false || null：false | （コメント文）

### Association
- belongs_to :user
- belongs_to :product
- has_many :comment-reports

##  product-like（いいね）テーブル
|Column|Type|Options|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| product_id | integer | null：false、foreign_key：true |

### Association
- belongs_to :user
- belongs_to :product

##  product-report（不適切商品報告）テーブル
|Column|Type|Options|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| product_id | integer | null：false、foreign_key：true |

### Association
- belongs_to :user
- belongs_to :product

##  comment-report（不適切コメント報告）テーブル
|Column|Type|Options|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| comment_id | integer | null：false、foreign_key：true |

### Association
- belongs_to :user
- belongs_to :comment


## credit テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true| ユーザー情報を外部キーとして所有
|payjp_id|integer|null: false, foreign_key: true| payjpのid

- belongs_to :user


### purchase-history テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|credit_id|integer|null: true, foreign_key: true|
|purchase-product|string||  購入した商品
|purchase-trading|string||  取引中(購入)
|points|integer||  ポイント

- belongs_to :product
- belongs_to :user


### sales-history テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|

- belongs_to :product
- belongs_to :user



### photo
|Column|Type|Options|
|------|----|-------|
|product_id|integer|null: false, foreign_key :true|
|url|integer|null: false|
|user_id|integer|null: false|

- belongs_to :product


### category
|Column|Type|Options|
|------|----|-------|
|ancestry|string||
|product_id|integer|null: false, foreign_key :true|
|category-name|string|null: false|

- has_many :products


### brand
|Column|Type|Options|
|------|----|-------|
|brand-name|string|null: true| （ブランド）
|category_id|integer|null: false, foreign_key :true|
|product_id|integer|null: false, foreign_key :true|

- has_many :products