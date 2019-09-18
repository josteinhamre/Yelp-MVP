# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Starting"
10.times do
  resto = Restaurant.new
  resto.name = Faker::Restaurant.name
  resto.address = Faker::Address.full_address
  resto.phone_number = Faker::PhoneNumber.phone_number
  resto.category = %w[chinese italian japanese french belgian].sample
  resto.save!
  p resto
  5.times do
    review = Review.new
    review.content = Faker::Restaurant.review
    review.rating = [0, 1, 2, 3, 4, 5].sample
    review.restaurant = resto
    review.save!
    p review
  end
end




