# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(name: 'BlincheG', email: 'blinchegg@gmail.com', password: 'qweqwe', password_confirmation: 'qweqwe', admin: true)
dir = Rails.root + 'app' + 'assets' + 'images' + "logo11.png"
cafe = Cafe.create(name: 'Империя пиццы', desc: 'кафе', image:File.new(dir))
chili = Rails.root + 'app' + 'assets' + 'images' + "chilli.jpg"
food = Food.create(name: 'Пицца Чили', price: '250 сом', desc: 'вкусная пицца от повара', cafe_id: 1, image:File.new(chili))
