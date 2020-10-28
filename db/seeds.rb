require "csv"

Hero.delete_all

filename = Rails.root.join("db/heroes.csv")

puts "Loading Movies from the CSV file: #{filename}"

csv_data = File.read(filename)
heros = CSV.parse(csv_data, headers: true, encoding: "utf-8")

heros.each do |m|
  ----
end

