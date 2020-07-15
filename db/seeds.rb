# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'json'
require 'open-uri'
puts 'Cleaning ingredients database'
Ingredient.destroy_all
doc = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list".read

doc['drinks'].each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
  puts
end
puts 'Seeded db'
