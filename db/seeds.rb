puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Curry Station", address: "London Bridge", phone_number: "01829382711", category:"chinese")
puts "Created Curry Station"
Restaurant.create!(name: "Pizza Hut", address: "Brixton", phone_number: "01824382771", category:"italian")
puts "Created Pizza Hut"
Restaurant.create!(name: "Moonstar Cafe", address: "Oval", phone_number: "01824382755", category:"french")
puts "Created Moonstar Cafe"
Restaurant.create!(name: "Megastore", address: "London Bridge", phone_number: "01829382711", category:"chinese")
puts "Created Megastore"
Restaurant.create!(name: "Hometown", address: "Clpaham", phone_number: "01824346771", category:"italian")
puts "Created Hometown"
Restaurant.create!(name: "Brat", address: "Oval", phone_number: "+23824382755", category:"japanese")
puts "Created Brat"


# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
