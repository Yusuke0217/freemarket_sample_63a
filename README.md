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
|name|string|null: false|
|password|string|null: false|
|mail|string|null: false|
|phone-number|string|null: false|
|cradit-number|string|null: false|
|prefectures|string|null: false|
|city|string|null: false|
|address|string|null: false|
|postal-code|string|null: false|
|building-name|string|null: false|
|birthday-year|string|null: false|
|birthday-month|string|null: false|
|birthday|string|null: false|
|first-name|string|null: false|
|first-name-kana|string|null: false|
|last-name|string|null: false|
|last-name-kana|string|null: false|
||string|null: false|
||string|null: false|
||string|null: false|
||string|null: false|
||string|null: false|
||string|null: false|
||string|null: false|
||string|null: false|
||string|null: false|
||string|null: false|
||string|null: false|
||string|null: false|
### Association
- has_many :tweets
- has_many :comments
