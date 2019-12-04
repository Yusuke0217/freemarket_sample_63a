class User < ApplicationRecord
  extend ActiveHash::ActiveRecordExtensions

  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /\A\d{10,11}\z/
  kanji = /\A[一-龥]+\z/
  kana = /\A([ァ-ン]|ー)+\z/
  postal = /\A\d{3}-\d{4}\z/

# signup2入力項目
  validates :nickname,                presence: true, length: {maximum: 20}
  validates :email,                   presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :password,                presence: true, length: {minimum: 7, maximum: 30}
  validates :last_name,               presence: true, length: {maximum: 20}
  validates :first_name,              presence: true, length: {maximum: 20}
  validates :last_name_kana,          presence: true, length: {maximum: 20}
  validates :first_name_kana,         presence: true, length: {maximum: 20}

  # signup3入力項目 ハイフン有りの場合はエラーメッセージ
  validates :phone_number,            presence: true, format: { with: VALID_PHONE_REGEX }

  # signup4入力項目
  validates :first_name_delivery,               presence: true, length: {maximum: 20}, format: { with: kanji }
  validates :first_name_kana_delivery,               presence: true, length: {maximum: 20}, format: { with: kana }
  validates :last_name_delivery,               presence: true, length: {maximum: 20}, format: { with: kanji }
  validates :last_name_kana_delivery,               presence: true, length: {maximum: 20}, format: { with: kana }
  validates :postal_code,         presence: true, format: { with: postal}




  enum prefecture: { 北海道: 1, 青森県: 2, 岩手県: 3, 宮城県: 4, 秋田県: 5, 山形県: 6, 福島県: 7, 東京都: 8, 神奈川県: 9, 埼玉県: 10, 千葉県: 11, 茨城県: 12, 栃木県: 13, 群馬県: 14, 山梨県: 15, 新潟県: 16, 長野県: 17, 富山県: 18, 石川県: 19, 福井県: 20, 愛知県: 21, 岐阜県: 22, 静岡県: 23, 三重県: 24, 大阪府: 25, 兵庫県: 26, 京都府: 27, 滋賀県: 28, 奈良県: 29, 和歌山県: 30, 鳥取県: 31, 島根県: 32, 岡山県: 33, 広島県: 34, 山口県: 35, 徳島県: 36, 香川県: 37, 愛媛県: 38, 高知県: 39, 福岡県: 40, 佐賀県: 41, 長崎県: 42, 熊本県: 43, 大分県: 44, 宮崎県: 45, 鹿児島県: 46, 沖縄県: 47}, _prefix: true
end