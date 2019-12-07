# レディース
lady = Category.create(name: "レディース")

lady_tops = lady.children.create(name: "トップス")
lady_jacket = lady.children.create(name: "ジャケット/アウター")
lady_pants = lady.children.create(name: "パンツ")
lady_skirt = lady.children.create(name: "スカート")
lady_one-piece-dress = lady.children.create(name: "ワンピース")
lady_shoes = lady.children.create(name: "靴")
lady_pajamas = lady.children.create(name: "ルームウェア/パジャマ")
lady_legwear = lady.children.create(name: "レッグウェア")
lady_hat = lady.children.create(name: "帽子")
lady_bag = lady.children.create(name: "バッグ")
lady_accessory = lady.children.create(name: "アクセサリー")
lady_hear-accessory = lady.children.create(name: "ヘアアクセサリー")
lady_goods = lady.children.create(name: "小物")
lady_watch = lady.children.create(name: "時計")

# メンズ
mens = Category.create(name: "メンズ")

mens_tops = mens.children.create(name: "トップス")
mens_jacket = mens.children.create(name: "ジャケット/アウター")
mens_pants = mens.children.create(name: "パンツ")
mens_shoes = mens.children.create(name: "靴")
mens_bag = mens.children.create(name: "バッグ")
mens_suits = mens.children.create(name: "スーツ")
mens_hat = mens.children.create(name: "帽子")
mens_accessory = mens.children.create(name: "アクセサリー")
mens_goods = mens.children.create(name: "小物")
mens_watch = mens.children.create(name: "時計")
mens_swimwear = mens.children.create(name: "水着")
mens_legwear = mens.children.create(name: "レッグウェア")
mens_underwear = mens.children.create(name: "アンダーウェア")
mens_others = mens.children.create(name: "その他")

# ベビー・キッズ
kids = Category.create(name: "ベビー・キッズ")

kids
kids
kids

# インテリア・住まい・小物
interior = Category.create(name: "インテリア・住まい・小物")

interior
interior
interior

# 本・音楽・ゲーム
books = Category.create(name: "本・音楽・ゲーム")

books
books
books

# おもちゃ・ホビー・グッズ
toys = Category.create(name: "おもちゃ・ホビー・グッズ")

toys
toys
toys

# コスメ・香水・美容
cosmetics = Category.create(name: "コスメ・香水・美容")

cosmetics
cosmetics
cosmetics

# 家電・スマホ・カメラ
electronics = Category.create(name: "家電・スマホ・カメラ")

electronics
electronics
electronics

# スポーツ・レジャー
sports = Category.create(name: "スポーツ・レジャー")

sports
sports
sports

# ハンドメイド
handmade = Category.create(name: "ハンドメイド")

handmade 
handmade
handmade

# チケット
ticket = Category.create(name: "チケット")

ticket
ticket
ticket

# 自動車・オートバイ
vehicle = Category.create(name: "自動車・オートバイ")

vehicle
vehicle
vehicle

# その他
others = Category.create(name: "その他")

others_sale = others.children.create(name: "まとめ売り")
others_pet = others.children.create(name: "ペット用品")
others_foods = others.children.create(name: "食品")
others_alcohol = others.children.create(name: "飲料/酒")
others_daily = others.children.create(name: "日用品/生活雑貨/旅行")
others_antique = others.children.create(name: "アンティーク/コレクション")
others_stationary = others.children.create(name: "文房具/事務用品")
others_shop = others.children.create(name: "事務/店舗用品")
others_others = others.children.create(name: "その他")

# カテゴリー一覧