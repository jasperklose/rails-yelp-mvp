require 'faker'

Restaurant.delete_all
puts "Creating Restaurants..."
5.times do
  Restaurant.create!(name: Faker::Restaurant.name, phone_number: Faker::PhoneNumber.cell_phone, category: "french", address: Faker::Address.full_address)
end
puts "Restaurants created..."

all_restaurants = Restaurant.all

all_restaurants.each do |restaurant|
  Review.create!(rating: Faker::Number.within(range: 1..5), content: Faker::Restaurant.review, restaurant: restaurant)
end
