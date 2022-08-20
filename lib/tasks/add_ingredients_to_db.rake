require 'csv'
desc "Add ingredients to datbase"
task :add_ingredients => :environment do
  puts "starting csv parse"
  csv_text = File.read("lib/skyrim_ingredient_list.csv")
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    parsed_row = row.to_hash
    effects = []
    %w(effect_1 effect_2 effect_3 effect_4).each do |effect|
      effects << Effect.find_or_create_by(name: parsed_row[effect])
    end
    Ingredient.create(name: parsed_row["name"], expansion_pack: parsed_row["expansion_pack"], value: parsed_row["value"], image_url: parsed_row["image_url"], weight: parsed_row["weight"], effects: effects)
    puts "created #{parsed_row["name"]} succesfully"
  end
  puts 'parse complete'
end
