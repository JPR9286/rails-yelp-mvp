# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.new(
        name: "La Tour d'Argent",
        address: "15 Quai de la Tournelle, 75005 Paris",
        phone_number: "01 43 54 23 31",
        category: "french"
      ).save

Restaurant.new(
  name: "Special Pizza",
  address: "35 rue montmarte, 75009 Paris",
  phone_number: "01 54 43 23 11",
  category: "italian"
).save

Restaurant.new(
  name: "special China",
  address: "33 rue de pekin, 75013 Paris",
  phone_number: "01 43 54 23 33",
  category: "chinese"
).save

resto4 = Restaurant.new(
  name: "A la frite",
  address: "44 rue de belgique, 75018 Paris",
  phone_number: "01 43 54 23 44",
  category: "belgian"
).save

review4 = Review.new(
  rating: 2,
  content: "Rien ne vaut des french fries"
)
review4.restaurant = Restaurant.last
review4.save

Restaurant.new(
  name: "l'Aubrac",
  address: "55 rue de france, 75013 Paris",
  phone_number: "01 43 54 23 55",
  category: "french"
).save

puts "Finished"
