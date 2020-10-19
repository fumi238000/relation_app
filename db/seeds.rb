# 各テーブルのデータを全て削除
User.destroy_all
Post.destroy_all

# 初期データを追加(userテーブル)
user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

# 初期データを追加(postテーブル)
Post.create!(content: "おはよう", user_id: user2.id)
Post.create!(content: "こんにちは", user_id: user3.id)
Post.create!(content: "こんばんは", user_id: user3.id)


puts "初期データのと投入に成功しました！"
