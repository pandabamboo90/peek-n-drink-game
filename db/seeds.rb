# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

room = Room.create(name: 'Room 1')

set1 = SetCard.create(title: 'Set 1')
set2 = SetCard.create(title: 'Set 2')

images1 = [
  'https://filedn.com/ltOdFv1aqz1YIFhf4gTY8D7/ingus-info/BLOGS/Photography-stocks3/stock-photography-slider.jpg',
  'https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrKHPsvNDJHY9tWpkHrfkfo8Dkf0LvZU3Hdg&usqp=CAU'
]

images2 = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJYiAfd49XksJhof9-8YEX2-52vGhMubs5IA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBoT8aT2n5ep_sg3C05vQxAg7Qy_XruE03NA&usqp=CAU'
]

images1.each do |img|
  card = set1.cards.create()
  card.remote_image_url = img
  card.save
end

images2.each do |img|
  card = set2.cards.create()
  card.remote_image_url = img
  card.save
end