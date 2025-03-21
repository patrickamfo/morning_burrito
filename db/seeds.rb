# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require_relative "data/challenges"


Challenge.destroy_all
User.destroy_all

p "Creating challenges..."
challenges.each { |challenge| Challenge.create!(challenge) }
p "Created #{Challenge.count} challenges"

myUser = User.create(first_name:"pat", category_preference: "Crafting", length_preference: "6", email: "junior@email.com", password: "password")
