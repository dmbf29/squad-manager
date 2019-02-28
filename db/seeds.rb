# formations = %w(3142 3412 3421 343 352 41212 4132 4141 4222 4231 424 4312 4321 433 433(2) 433(3) 433(4) 433(5) 4411 4411(2) 442 442(2) 451 451(2) 5212 5221 532 541)
formations = ["three-four-three", "three-five-two", "four-five-one", "five-four-one", "five-three-two", "four-four-two", "four-three-three"]
numbers = ["3-4-3", "3-5-2", "4-5-1", "5-4-1", "5-3-2", "4-4-2", "4-3-3"]

formations.each_with_index do |formation, index|
  number = formation.split("-")
  number = numbers[index]
  Formation.where(
    name: formation,
    number: number,
    dfs: number.split("-")[0].to_i,
    mfs: number.split("-")[1].to_i,
    fws: number.split("-")[2].to_i
  ).first_or_create!
end

user = User.find_by(email: 'douglasmberkley@gmail.com')
unless user
  User.create!(
    email: 'douglasmberkley@gmail.com',
    password: ENV['ADMIN_PASSWORD']
  )
end

squad = Squad.where(
  user: user,
  name: "Newcastle Youth",
  formation: Formation.find_by(number: "4-3-3"),
).first_or_create!

Player.where(
  first_name: "First",
  last_name: "Wolff",
  nation: "GER",
  age: 16,
  potential_high: 90,
  potential_low: 80,
  rating: 57,
  badge: "seedling",
  status: "player",
  photo: "",
  squad_place_id: squad.squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "First",
  last_name: "Schmidt",
  nation: "GER",
  age: 15,
  potential_high: 94,
  potential_low: 87,
  rating: 60,
  badge: "crown",
  status: "prospect",
  photo: "",
  squad_place_id: squad.squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Freddie",
  last_name: "Woodman",
  nation: "ENG",
  age: 18,
  potential_high: 80,
  potential_low: 75,
  rating: 71,
  badge: "futbol",
  status: "player",
  photo: "",
  squad_place_id: squad.squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Paul",
  last_name: "Dummet",
  nation: "WAL",
  age: 27,
  potential_high: 76,
  potential_low: 75,
  rating: 71,
  badge: "heart",
  status: "player",
  photo: "",
  squad_place_id: squad.squad_places.find_by(number: 2)
).first_or_create!

Player.where(
  first_name: "Adam",
  last_name: "Wilson",
  nation: "ENG",
  age: 19,
  potential_high: 80,
  potential_low: 75,
  rating: 67,
  badge: "futbol",
  status: "player",
  photo: "",
  squad_place_id: squad.squad_places.find_by(number: 2)
).first_or_create!

Player.where(
  first_name: "First",
  last_name: "Schneider",
  nation: "GER",
  age: 18,
  potential_high: 90,
  potential_low: 80,
  rating: 61,
  badge: "star",
  status: "player",
  photo: "",
  squad_place_id: squad.squad_places.find_by(number: 3)
).first_or_create!

Player.where(
  first_name: "First",
  last_name: "Roth",
  nation: "GER",
  age: 18,
  potential_high: 88,
  potential_low: 80,
  rating: 59,
  badge: "sheild-alt",
  status: "player",
  photo: "",
  squad_place_id: squad.squad_places.find_by(number: 3)
).first_or_create!

Player.where(
  first_name: "Stefan",
  last_name: "O'Conner",
  nation: "ENG",
  age: 22,
  potential_high: 66,
  potential_low: 60,
  rating: 67,
  badge: "dumpster",
  status: "player",
  photo: "",
  squad_place_id: squad.squad_places.find_by(number: 4)
).first_or_create!

Player.where(
  first_name: "First",
  last_name: "Fierro",
  nation: "ITA",
  age: 18,
  potential_high: 83,
  potential_low: 77,
  rating: 60,
  badge: "futbol",
  status: "player",
  photo: "",
  squad_place_id: squad.squad_places.find_by(number: 4)
).first_or_create!
