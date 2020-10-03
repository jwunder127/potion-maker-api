# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

effects = Effect.create([{name: "Cure Disease"},{name: "Fortify Light Armor"}, {name: "Fortify One-Handed"}, {name: "Fortify Sneak"}])
puts "effects #{effects}"
Ingredient.create(name: "Hawk Feathers", value: 15, effects: effects, image_url: nil)


