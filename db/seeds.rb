puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Curry Station", address: "London Bridge", phone_number: "01829382711", category:"Mexican")
puts "Created Curry Station"
Restaurant.create!(name: "Pizza Hut", address: "Brixton", phone_number: "01824382771", category:"Italian")
puts "Created Pizza Hut"
Restaurant.create!(name: "Moonstar Cafe", address: "Oval", phone_number: "01824382755", category:"Ghanaian")
puts "Created Pizza Hut"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
