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
|name|string|null: false, unique: true|  名前
|password|string|null: false, unique: true|  パスワード
|mail|string|null: false, unique: true|
|phone-number|integer|null: false, unique: true|  電話番号
|cradit-number|integer|null: false, unique: true|  クレジット番号
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
|exhibit-now|string||  出品中
|exhibit-trading|string||  取引中(出品)
|exhibit-sold|string||  売却済み
|like|integer||  いいね！
|points|integer||  ポイント
|earnings|integer||  売上金
|past transaction|string||  過去の取引
|purchase-product|string||  購入した商品
|purchase-trading|string||  取引中(購入)
|purchase-past|string||  過去の購入品
### Association
- has_many :products
- has_many :comments
- has_many :comment-report コメントの報告
- has_many :products, through: :like-product商品へのいいね
- has_many :products, through: :product-report商品の報告
- has_many :comments, through: :comment-report

＃  Mercri DB設計

## 製品（商品）テーブル
|列|タイプ|オプション|
| ------ | ---- | ----------- |
| name | string ||| null：false | （商品名）
|ブランド||文字列| （ブランド）
| user_id | integer | null：false、foreign_key：true |
|サイズ||整数|| null：false | （サイズ）
|条件||文字列|| null：false | （状態）
| shipping_charge || string || null：false | （配送料の負担）
| shipping_how || string || null：false | （配送方法）
| shipping_place || stringext || null：false | （配送元地域）
| shipping_date || integer || null：false | （発送日の目安）
|価格||整数|| null：false、foreign_key：true | （値段）
| text || text | （テキスト）
### 協会
- has_manyの：：、産物様：製品レポートを通じてユーザー、
- belongs_toの：製品レポート
- belongs_toの：製品のような
-にhas_many：コメント
##  comments（コメント）テーブル
|列|タイプ|オプション|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| product_id | integer | null：false、foreign_key：true |
| text | text | null：false || null：false | （コメント文）

### 協会
- belongs_toの：ユーザー
- belongs_toの：製品
-にhas_many：コメント-レポート

##  product-like（いいね）テーブル
|列|タイプ|オプション|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| product_id | integer | null：false、foreign_key：true |

### 協会
- belongs_toの：ユーザー
- belongs_toの：製品

##  product-report（不適切商品報告）テーブル
列|タイプ|オプション|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| product_id | integer | null：false、foreign_key：true |

### 協会
- belongs_toの：ユーザー
- belongs_toの：製品

##  comment-report（不適切コメント報告）テーブル
olumn |タイプ|オプション|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| comment_id | integer | null：false、foreign_key：true |

### 協会
- belongs_toの：ユーザー
- belongs_toの：コメント
