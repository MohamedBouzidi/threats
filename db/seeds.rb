# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

risk_levels = ['low', 'medium', 'high', 'fatal']
types = ['Malware', 'DDOS', 'Virus', 'Worm', 'Man in the Middle', 'Fishing', 'Other', 'Trojan', 'Hacking']


types.count.times do |n|
  name = types[n]
  description = Faker::Lorem.sentence(3)
  Type.create(name: name, description: description)
end

40.times do |n|
  name = Faker::Name.name
  description = Faker::Lorem.sentence(3)
  risk = risk_levels[Random.rand(risk_levels.count)]
  type_id = Random.rand(types.count)
  Threat.create(name: name, description: description, risk: risk, date_discovered: Time.zone.now, type_id: type_id)
end

99.times do |n|
  name = Faker::Name.name
  attacker = Faker::Name.name
  attacker_ip = Array.new(4){rand(256)}.join('.')
  attacker_geo = Faker::Name.name
  target = Faker::Name.name
  target_ip = Array.new(4){rand(256)}.join('.')
  target_geo = Faker::Name.name
  threat_id = Random.rand(Threat.all.count)
  Attack.create(name: name, attacker: attacker, attacker_ip: attacker_ip, attacker_geo: attacker_geo, target: target, target_ip: target_ip, target_geo: target_geo, threat_id: threat_id)
end