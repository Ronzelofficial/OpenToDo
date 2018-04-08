# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  user = User.new(
    username: Faker::Lorem.characters(10),
    password: Faker::Lorem.characters(15)
    )
  user.save!
end
users = User.all

puts "3 users created"
