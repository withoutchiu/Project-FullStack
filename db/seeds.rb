require "csv"

Hero.delete_all
RoleSecond.delete_all
HeroRole.delete_all

hfilename = Rails.root.join("db/heroes.csv")
rfilename = Rails.root.join("db/roles.csv")

puts "Loading Movies from the CSV file: #{hfilename}, #{rfilename}"

hcsv_data = File.read(hfilename)
rcsv_data = File.read(rfilename)

heros = CSV.parse(hcsv_data, headers: true, encoding: "utf-8")

roles = CSV.parse(rcsv_data, headers: true, encoding: "utf-8")

heros.each do |m|

  Hero.find_or_create_by(
    name: m["name"],
    localized_name: m["localized_name"],
    primary_attr: m["primary_attr"],
    attack_type: m["attack_type"],
    roles0: m["roles0"],
    roles1: m["roles1"],
    roles2: m["roles2"],
    legs: m["legs"],
    roles3: m["roles3"],
    roles4: m["roles4"],
    roles5: m["roles5"]
  )

  if(m["roles0"] === "Carry")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 1)
  end
  if(m["roles0"] === "Escape")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 2)
  end
  if(m["roles0"] === "Nuker")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 3)
  end
  if(m["roles0"] === "Initiator")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 4)
  end
  if(m["roles0"] === "Durable")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 5)
  end
  if(m["roles0"] === "Disabler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 6)
  end
  if(m["roles0"] === "Jungler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 7)
  end
  if(m["roles0"] === "Support")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 8)
  end
  if(m["roles0"] === "Pusher")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 9)
  end

  if(m["roles1"] === "Carry")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 1)
  end
  if(m["roles1"] === "Escape")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 2)
  end
  if(m["roles1"] === "Nuker")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 3)
  end
  if(m["roles1"] === "Initiator")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 4)
  end
  if(m["roles1"] === "Durable")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 5)
  end
  if(m["roles1"] === "Disabler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 6)
  end
  if(m["roles1"] === "Jungler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 7)
  end
  if(m["roles1"] === "Support")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 8)
  end
  if(m["roles1"] === "Pusher")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 9)
  end

  if(m["roles2"] === "Carry")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 1)
  end
  if(m["roles2"] === "Escape")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 2)
  end
  if(m["roles2"] === "Nuker")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 3)
  end
  if(m["roles2"] === "Initiator")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 4)
  end
  if(m["roles2"] === "Durable")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 5)
  end
  if(m["roles2"] === "Disabler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 6)
  end
  if(m["roles2"] === "Jungler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 7)
  end
  if(m["roles2"] === "Support")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 8)
  end
  if(m["roles2"] === "Pusher")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 9)
  end

  if(m["roles3"] === "Carry")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 1)
  end
  if(m["roles3"] === "Escape")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 2)
  end
  if(m["roles3"] === "Nuker")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 3)
  end
  if(m["roles3"] === "Initiator")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 4)
  end
  if(m["roles3"] === "Durable")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 5)
  end
  if(m["roles3"] === "Disabler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 6)
  end
  if(m["roles3"] === "Jungler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 7)
  end
  if(m["roles3"] === "Support")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 8)
  end
  if(m["roles3"] === "Pusher")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 9)
  end

  if(m["roles4"] === "Carry")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 1)
  end
  if(m["roles4"] === "Escape")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 2)
  end
  if(m["roles4"] === "Nuker")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 3)
  end
  if(m["roles4"] === "Initiator")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 4)
  end
  if(m["roles4"] === "Durable")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 5)
  end
  if(m["roles4"] === "Disabler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 6)
  end
  if(m["roles4"] === "Jungler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 7)
  end
  if(m["roles4"] === "Support")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 8)
  end
  if(m["roles4"] === "Pusher")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 9)
  end

  if(m["roles5"] === "Carry")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 1)
  end
  if(m["roles5"] === "Escape")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 2)
  end
  if(m["roles5"] === "Nuker")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 3)
  end
  if(m["roles5"] === "Initiator")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 4)
  end
  if(m["roles5"] === "Durable")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 5)
  end
  if(m["roles5"] === "Disabler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 6)
  end
  if(m["roles5"] === "Jungler")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 7)
  end
  if(m["roles5"] === "Support")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 8)
  end
  if(m["roles5"] === "Pusher")
    hero_roles = HeroRole.find_or_create_by(heroId: m["id"], rolesId: 9)
  end
end
puts "Created #{Hero.count} hero"
roles.each do |m|
  RoleSecond.find_or_create_by(
    name: m["role"]
  )

end

