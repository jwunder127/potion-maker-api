require 'csv'
desc "Add effects to database"
task :add_effects => :environment do
    puts "starting csv parse"
    csv_text = File.read("lib/skyrim_effects_list.csv")
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      parsed_row = row.to_hash
      Effect.create(parsed_row)
      puts "Created #{parsed_row["name"]} successfully"
    end
    puts "parse complete"
end
