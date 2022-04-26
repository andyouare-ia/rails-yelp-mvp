require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all
Review.destroy_all

puts "Creating restaurants..."

# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 5 , category: "Italian"}
# pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 4, category: "Pizza" }

# [ dishoom, pizza_east ].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end

category = ["chinese", "italian", "japanese", "french", "belgian"]

100.times do
  restaurant = Restaurant.create!({
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: category.sample
  })
  puts "#{restaurant.name} #{restaurant.phone_number} #{restaurant.category}"
end

356.times do
  review = Review.create!({
    rating: rand(1..5),
    content: Faker::Restaurant.review,
    restaurant_id: rand(1..100)
  })
  puts "#{review.rating} #{review.content} #{review.restaurant_id}"
end


puts "Finished!"
