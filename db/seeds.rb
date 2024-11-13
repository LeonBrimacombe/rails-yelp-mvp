require "json"
require "open-uri"

url = 'https://gist.githubusercontent.com/ahmedeltaher/78e7f1b54d4b60af73b9802b38abf3cf/raw/931c5a3a1482a2536f18fedb7858cdc518337338/data.json'
file = URI.parse(url).read
restaurant_hash = JSON.parse(file)

puts "Creating restuarants..."
Restaurant.destroy_all
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    image_url: restaurant_hash[rand(0..10)]["image"]
    )
  2.times do
    Review.create!(
      rating: rand(1..5),
      content: Faker::Restaurant.review,
      restaurant: restaurant
    )
  puts "Restaurant with reviews create!"
  end
end

puts "Finished! Created #{Restaurant.count} restaurants."
