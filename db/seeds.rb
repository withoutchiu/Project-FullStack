require "csv"

Hero.delete_all
PrimaryAttribute.delete_all

filename = Rails.root.join("db/heroes.csv")

puts "Loading CSV file... #{filename}"

csv_data = File.read(filename)
# records
heroes = CSV.parse(csv_data, headers: true, encoding: "UTF-8")


heroes.each do |hero|

  # hero_role0 = HeroRole.find_or_create_by(role: hero["roles0"])
  # hero_role1 = HeroRole.find_or_create_by(role: hero["roles1"])
  # hero_role2 = HeroRole.find_or_create_by(role: hero["roles2"])
  # hero_role3 = HeroRole.find_or_create_by(role: hero["roles3"])
  # hero_role4 = HeroRole.find_or_create_by(role: hero["roles4"])
  # hero_role5 = HeroRole.find_or_create_by(role: hero["roles5"])

  # puts hero_role0
  # puts hero_role1
  # puts hero_role2
  # puts hero_role3
  # puts hero_role4
  # puts hero_role5

  primary_attribute = PrimaryAttribute.find_or_create_by(name: hero["primary_attr"])

  if primary_attribute&.valid?
    hero = primary_attribute.heroes.create(
      name: hero["name"],
      localized_name: hero["localized_name"],
      attack_type: hero["attack_type"],
      legs: hero["legs"]
    )

    puts "Invalid Hero #{hero['localized_name']}" unless hero&.valid?
  else
    puts "Invalid hero role #{hero["roles0"]} for Hero #{hero["localized_name"]}."
  end
end

puts "Created #{PrimaryAttribute.count} attribute."

puts "Created #{Hero.count} hero."
