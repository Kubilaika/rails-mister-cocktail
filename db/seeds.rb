# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
ingredients_attributes = [{name: "lemon"}, {name: "mint"}, {name: "tomato"}, {name: "ice"}, {name: "soda"}]
Ingredient.create!(ingredients_attributes)


# require 'faker'
# puts 'Cleaning database...'
# Ingredient.destroy_all

# puts 'Start creating 10 fake ingredients à l\'ancienne...'
# ingredients_attributes = []
# 10.times do
#   ingredients_attributes << { name: Faker::Food.ingredient }
# end
# Ingredient.create!(ingredients_attributes)
# puts 'Finished!'
# puts "End creating #{ingredients_attributes.count} fake ingredients"

