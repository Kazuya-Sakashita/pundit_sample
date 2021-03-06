# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ユーザーデータを作成
# 管理者ユーザー
#  User.create!(
#     email: "admin@admin.com",
#     password: "password",
#     password_confirmation: "password",
#     role: 1
#   )

#   # 一般ユーザー
#   User.create!(
#     email: "general@general.com",
#     password: "password",
#     password_confirmation: "password",
#     role: 0
#   )

# 5.times do |n|
#   Post.create!(
#     user_id: 2,
#     title: "本日のおすすめ#{n + 1}",
#     content: "ディナー#{n + 1}"
#   )
# end

5.times do |n|
  # 一般ユーザー
  User.create!(
    email: "general#{n + 1}@general#{n + 1}.com",
    password: "password",
    password_confirmation: "password",
    role: 0
  )
end