require "csv"

Hero.delete_all
PrimaryAttribute.delete_all


filename = Rails.root.join("db/heroes.csv")
filenameStats = Rails.root.join("db/heroStats.csv")

puts "Loading CSV file... #{filename}"
puts "Loading CSV file... #{filenameStats}"

csv_data = File.read(filename)
csv_data_stats = File.read(filenameStats)
# records
heroes = CSV.parse(csv_data, headers: true, encoding: "UTF-8")
stats = CSV.parse(csv_data_stats, headers: true, encoding: "UTF-8")


heroes.each do |hero|
  primary_attribute = PrimaryAttribute.find_or_create_by(name: hero["primary_attr"])
  if primary_attribute&.valid?
    xhero = primary_attribute.heroes.create(
      name: hero["name"],
      localized_name: hero["localized_name"],
      attack_type: hero["attack_type"],
      legs: hero["legs"]
    )

    puts "Invalid Hero #{hero['localized_name']}" unless xhero&.valid?
  else
    puts "Invalid hero role #{hero["roles0"]} for Hero #{hero["localized_name"]}."
  end
end

stats.each do |stat|
  hero_record = Hero.find_or_create_by(localized_name: stat["localized_name"])
  hero_record.img = stat["img"]
  hero_record.icon = stat["icon"]
  hero_record.base_health = stat["base_health"]
  hero_record.base_health_regen = stat["base_health_regen"]
  hero_record.base_mana = stat["base_mana"]
  hero_record.base_mana_regen = stat["base_mana_regen"]
  hero_record.base_armor = stat["base_armor"]
  hero_record.base_mr = stat["base_mr"]
  hero_record.base_attack_min = stat["base_attack_min"]
  hero_record.base_attack_max = stat["base_attack_max"]
  hero_record.base_str = stat["base_str"]
  hero_record.base_agi = stat["base_agi"]
  hero_record.base_int = stat["base_int"]
  hero_record.str_gain = stat["str_gain"]
  hero_record.agi_gain = stat["agi_gain"]
  hero_record.int_gain = stat["int_gain"]
  hero_record.attack_range = stat["attack_range"]
  hero_record.projectile_speed = stat["projectile_speed"]
  hero_record.attack_rate = stat["attack_rate"]
  hero_record.move_speed = stat["move_speed"]
  hero_record.turn_rate = stat["turn_rate"]
  hero_record.cm_enabled = stat["cm_enabled"]
  hero_record.save
end

puts "Created #{PrimaryAttribute.count} attribute."

puts "Created #{Hero.count} hero."