# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'
puts 'Cleaning ingredients database'
Ingredient.destroy_all
10.times do
  new_ingredient = Ingredient.new(
    name: Faker::Beer.brand
  )
  new_ingredient.save
  puts "Ingredient #{new_ingredient.id} created"
end
puts 'Seeded db'
