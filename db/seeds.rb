# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'Cleaning database...'
Cocktail.destroy_all

cocktails_attributes = []

puts 'Creating 10 fake cocktails à l\'ancienne...'
10.times do
  cocktails_attributes << { name: Faker::Company.name }
end

Cocktail.create!(cocktails_attributes)
puts 'Finished!'
puts "Creating #{cocktails_attributes.count} fake cocktails"

doses_attributes = []

puts 'Creating 10 fake doses à l\'ancienne...'
10.times do
  doses_attributes << { "#{ description: Faker::Number.number(2) } ml" }
end

Dose.create!(doses_attributes)
puts 'Finished!'
puts "Creating #{doses_attributes.count} fake doses"
