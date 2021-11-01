# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 # ユーザーデータを作成
 # 管理者ユーザー
 User.create!(
    email: "admin@admin.com",
    password: "password",
    password_confirmation: "password",
    role: 1
  )
 
  # 一般ユーザー
  User.create!(
    email: "general@general.com",
    password: "password",
    password_confirmation: "password",
    role: 0
  )