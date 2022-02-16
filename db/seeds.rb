# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+9719393933", category: "french"}
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+9718584843", category: "italian" }
mcdonald = { name: "McDonalds", address: "Knowledge City", phone_number: "+9719849332", category: "belgian" }
zuma = { name: "ZUMA", address: "DIFC", phone_number: "+9714888888", category: "japanese" }
shanghai = { name: "Shanghai Tang", address: "Dorchester Hotel", phone_number: "+447778888", category: "chinese" }

[dishoom, pizza_east, mcdonald, zuma, shanghai].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
