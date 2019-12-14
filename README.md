# README
* Ruby version: 2.5.1
* Ruby on rails version: 5.2.4
* プログラミングスクールTECH::EXPERTの最終課題で某フリーマーケットサービスのクローンサイトを作成しました。
  約1ヶ月間、6人チームでアジャイル開発を行いました。

# リンク
http://http://18.176.246.240/  
Basic認証をかけています。ご覧の際は以下のIDとPassを入力してください。  
■Basic認証  
ID: 63_mercari_a  
Pass: 63a

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|  名前
|nickname|string|null: false|  ニックネーム
|password|string|null: false|  パスワード
|email|string|null: false, unique: true|  メールアドレス
|phone-number|integer|null: false|  電話番号
|prefectures|string|null: false|  都道府県
|city|string|null: false|  市区町村
|address|integer|null: false|  番地
|postal-code|integer|null: false|  郵便番号
|building-name|string||  建物名
|phone_number_delivery|integer|null: false|  電話番号 届け先
|birthday-year|integer|null: false|  誕生年
|birthday-month|integer|null: false|  月
|birthday-day|integer|null: false|  日
|first-name|string|null: false|  姓（漢字）
|first-name-kana|string|null: false|  姓（仮名）
|last-name|string|null: false|  名（漢字）
|last-name-kana|string|null: false|  名（仮名）
|first_name_delivery|string|null: false|  姓（漢字）届け先
|first_name_kana_delivery|string|null: false|  姓（仮名）届け先
|last_name_delivery|string|null: false|  名（漢字）届け先
|last_name_kana_delivery|string|null: false|  名（仮名）届け先
|like|integer||  いいね！
|earnings|integer||  売上金
|profile|text||  プロフィール
|exhibit-product|string||  出品した商品
|exhibit-number|integer||  出品数
|purchase_history_id|integer|null: false|  買い手id
|sales_history_id|integer|null: false|  売り手id
|payjp_id|integer|null: false, foreign_key: true| payjpのid
|sns_credentials_id|integer|null: false, foreign_key: true|

### Association
- has_many :products, through: :like
- has_many :products, through: :comments
- has_many :sns_credentials
- has_one :card

## products テーブル
|Column|Type|Options|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| name | string| null：false | （商品名）
| size|integer| null：true | （サイズ）
| condition|string| null：false | （状態）
| shipping_charge |string | null：false | （配送料の負担）
| shipping_how |string | null：false | （配送方法）
| shipping_place|string| null：false | （配送元地域）
| shipping_date | integer | null：false | （発送日の目安）
| price|integer|null：false、foreign_key：true | （値段）
| comments |string|| （テキスト）

### Association
- belongs_to :user, through: :comments
- belongs_to :user, through: :like
- has_many :images

## likesテーブル
|Column|Type|Options|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| product_id | string| null：false | （商品）

### Association
- belongs_to :user
- belongs_to :product

##  comments（コメント）テーブル
|Column|Type|Options|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| product_id | integer | null：false、foreign_key：true |
| comments | text | null：false | （コメント文）

### Association
- belongs_to :user
- belongs_to :product

##  like（いいね!）テーブル
|Column|Type|Options|
| ------ | ---- | ----------- |
| user_id | integer | null：false、foreign_key：true |
| product_id | integer | null：false、foreign_key：true |

### Association
- belongs_to :user
- belongs_to :product

## card テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true| ユーザー情報を外部キーとして所有
|card_id|integer|null: false, foreign_key: true|
|customer_id|integer|null: false, foreign_key: true|
|token|integer|null: false, foreign_key: true|

- belongs_to :user

## sns_credential テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true| ユーザー情報を外部キーとして所有
|provider|integer|null: false, foreign_key: true|
|uid|integer|null: false, foreign_key: true|

- belongs_to :user