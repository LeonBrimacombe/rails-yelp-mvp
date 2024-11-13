puts "Creating restuarants..."
Restaurant.destroy_all
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
  2.times do
    Review.create!(
      rating: rand(0..5),
      content: Faker::Restaurant.review,
      restaurant: restaurant
    )
  puts "Restaurant with reviews create!"
  end
end

puts "Finished! Created #{Restaurant.count} restaurants."
