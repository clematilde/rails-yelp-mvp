# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
songs_kitchen = {name: "Song's Kitchen", address: "Rosenheimerstr. 67", phone_number: "089 55155395", category: "chinese"}
vinaiolo = {name: "Vinaiolo", address: "Rosenheimerstr. 69", phone_number: "089 55155396", category: "italian"}
sushi_sano = {name: "Sushi Sano", address: "Rosenheimerstr. 1", phone_number: "089 55155398", category: "japanese"}
brasserie = {name: "La Brasserie", address: "Rosenheimerstr. 3", phone_number: "089 55155396", category: "french"}
frite = {name: "Les Frites", address: "Rosenheimerstr. 6", phone_number: "089 55155393", category: "belgian"}


[songs_kitchen, vinaiolo, sushi_sano, brasserie, frite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
