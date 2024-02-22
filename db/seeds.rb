# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
Restaurant.destroy_all

dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 0134701130, category:"french"}
chezpepe = {name: "Chez Pepe", address: "15 NY St, London E2 7JE", phone_number: 0134573556, category:"italian"}
labellefrite = {name: "La belle frite", address: "5 Bruxelle St, London E2 7JE", phone_number: 013, category:"belgian"}
smallsmocky = {name: "Small smocky", address: "81 Boundary St, London E2 7JE", phone_number: 0133350244, category:"french"}
goldstick = {name: "Gold Stick", address: "76 Boundary St, London E2 7JE", phone_number: 0155444444, category:"japanese"}

[dishoom, chezpepe, labellefrite, smallsmocky, goldstick].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
