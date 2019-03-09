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
if user.nil?
  User.create!(
    email: 'douglasmberkley@gmail.com',
    password: ENV['ADMIN_PASSWORD']
  )
end

(1..28).to_a.each do |number|
  Avatar.where(
    photo: "avatar_#{number}.png"
  ).first_or_create!
end

squad = Squad.where(
  user: user,
  name: "Newcastle Youth",
  formation: Formation.find_by(number: "4-3-3"),
).first_or_create!

Player.where(
  first_name: "Julio",
  last_name: "Dominguez",
  nation: "ARG",
  age: 18,
  potential_high: 94,
  potential_low: 8,
  rating: 70,
  badge: "crown",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_22.png"),
  squad_place_id: squad.squad_rows.find_by(number: 4).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Dominic",
  last_name: "Lewis",
  nation: "ENG",
  age: 16,
  potential_high: 93,
  potential_low: 87,
  rating: 57,
  badge: "star",
  status: "youth",
  avatar: Avatar.find_by(photo: "avatar_2.png"),
  squad_place_id: squad.squad_rows.find_by(number: 4).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Robert",
  last_name: "Schmidt",
  nation: "GER",
  age: 16,
  potential_high: 94,
  potential_low: 87,
  rating: 60,
  badge: "crown",
  status: "prospect",
  avatar: Avatar.find_by(photo: "avatar_14.png"),
  squad_place_id: squad.squad_rows.find_by(number: 4).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Freddie",
  last_name: "Woodman",
  nation: "ENG",
  age: 23,
  potential_high: 80,
  potential_low: 75,
  rating: 74,
  badge: "futbol",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_28.png"),
  squad_place_id: squad.squad_rows.find_by(number: 4).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Paul",
  last_name: "Dummet",
  nation: "WAL",
  age: 28,
  potential_high: 76,
  potential_low: 75,
  rating: 71,
  badge: "heart",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_14.png"),
  squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Adam",
  last_name: "Wilson",
  nation: "ENG",
  age: 20,
  potential_high: 80,
  potential_low: 75,
  rating: 67,
  badge: "futbol",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_4.png"),
  squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Lewis",
  last_name: "Price",
  nation: "ENG",
  age: 17,
  potential_high: 94,
  potential_low: 87,
  rating: 64,
  badge: "crown",
  status: "loan",
  avatar: Avatar.find_by(photo: "avatar_24.png"),
  squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Achim",
  last_name: "Schneider",
  nation: "GER",
  age: 19,
  potential_high: 90,
  potential_low: 80,
  rating: 68,
  badge: "gem",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_25.png"),
  squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 2)
).first_or_create!

Player.where(
  first_name: "Niels",
  last_name: "Roth",
  nation: "GER",
  age: 18,
  potential_high: 88,
  potential_low: 80,
  rating: 64,
  badge: "gem",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_27.png"),
  squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 2)
).first_or_create!

Player.where(
  first_name: "Isaac",
  last_name: "Lewis",
  nation: "ENG",
  age: 17,
  potential_high: 83,
  potential_low: 77,
  rating: 59,
  badge: "futbol",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_4.png"),
  squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 3)
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
  avatar: Avatar.find_by(photo: "avatar_1.png"),
  squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 3)
).first_or_create!

Player.where(
  first_name: "Joaquin",
  last_name: "Moyano",
  nation: "ARG",
  age: 17,
  potential_high: 94,
  potential_low: 87,
  rating: 66,
  badge: "crown",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_23.png"),
  squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 4)
).first_or_create!

Player.where(
  first_name: "Benito",
  last_name: "Granero",
  nation: "ARG",
  age: 17,
  potential_high: 88,
  potential_low: 83,
  rating: 64,
  badge: "gem",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_21.png"),
  squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 4)
).first_or_create!

Player.where(
  first_name: "Sean",
  last_name: "Longstaff",
  nation: "ENG",
  age: 21,
  potential_high: 80,
  potential_low: 72,
  rating: 72,
  badge: "futbol",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_19.png"),
  squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Marcio",
  last_name: "Sepulveda",
  nation: "ESP",
  age: 19,
  potential_high: 88,
  potential_low: 82,
  rating: 62,
  badge: "gem",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_6.png"),
  squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Christian",
  last_name: "Graf",
  nation: "GER",
  age: 18,
  potential_high: 94,
  potential_low: 88,
  rating: 64,
  badge: "crown",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_26.png"),
  squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Luca",
  last_name: "Rossi",
  nation: "ITA",
  age: 16,
  potential_high: 93,
  potential_low: 87,
  rating: 61,
  badge: "crowm",
  status: "loan",
  avatar: Avatar.find_by(photo: "avatar_19.png"),
  squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 2)
).first_or_create!

Player.where(
  first_name: "Alex",
  last_name: "Conceicao",
  nation: "BRA",
  age: 17,
  potential_high: 94,
  potential_low: 89,
  rating: 70,
  badge: "crown",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_4.png"),
  squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 2)
).first_or_create!

Player.where(
  first_name: "Daniel",
  last_name: "Perez",
  nation: "ESP",
  age: 17,
  potential_high: 94,
  potential_low: 82,
  rating: 61,
  badge: "gem",
  status: "prospect",
  avatar: Avatar.find_by(photo: "avatar_7.png"),
  squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 2)
).first_or_create!

Player.where(
  first_name: "Ed",
  last_name: "Harris",
  nation: "ENG",
  age: 17,
  potential_high: 94,
  potential_low: 87,
  rating: 57,
  badge: "crown",
  status: "loan",
  avatar: Avatar.find_by(photo: "avatar_3.png"),
  squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 3)
).first_or_create!

Player.where(
  first_name: "Pedro",
  last_name: "Tavero",
  nation: "ESP",
  age: 17,
  potential_high: 89,
  potential_low: 82,
  rating: 65,
  badge: "gem",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_16.png"),
  squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 3)
).first_or_create!

Player.where(
  first_name: "Harvey",
  last_name: "Bennett",
  nation: "ENG",
  age: 17,
  potential_high: 88,
  potential_low: 82,
  rating: 62,
  badge: "gem",
  status: "loan",
  avatar: Avatar.find_by(photo: "avatar_17.png"),
  squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 3)
).first_or_create!

Player.where(
  first_name: "Rolando",
  last_name: "Aarons",
  nation: "ENG",
  age: 24,
  potential_high: 77,
  potential_low: 71,
  rating: 76,
  badge: "heart",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_2.png"),
  squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Victor",
  last_name: "Fernandez",
  nation: "ESP",
  age: 21,
  potential_high: 80,
  potential_low: 70,
  rating: 71,
  badge: "futbol",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_21.png"),
  squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "Denis",
  last_name: "Moraes",
  nation: "BRA",
  age: 18,
  potential_high: 94,
  potential_low: 89,
  rating: 70,
  badge: "crown",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_5.png"),
  squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 1)
).first_or_create!

Player.where(
  first_name: "First",
  last_name: "Schmidt",
  nation: "GER",
  age: 19,
  potential_high: 89,
  potential_low: 83,
  rating: 67,
  badge: "gem",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_1.png"),
  squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 2)
).first_or_create!

Player.where(
  first_name: "Yannick",
  last_name: "Toure",
  nation: "SWI",
  age: 19,
  potential_high: 80,
  potential_low: 72,
  rating: 70,
  badge: "futbol",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_3.png"),
  squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 2)
).first_or_create!

Player.where(
  first_name: "Elias",
  last_name: "Sorensen",
  nation: "DEN",
  age: 20,
  potential_high: 80,
  potential_low: 72,
  rating: 68,
  badge: "futbol",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_19.png"),
  squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 2)
).first_or_create!

Player.where(
  first_name: "Diogo",
  last_name: "Neves",
  nation: "BRA",
  age: 18,
  potential_high: 94,
  potential_low: 89,
  rating: 78,
  badge: "crown",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_1.png"),
  squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 3)
).first_or_create!

Player.where(
  first_name: "Andres",
  last_name: "Ramos",
  nation: "ESP",
  age: 17,
  potential_high: 94,
  potential_low: 85,
  rating: 67,
  badge: "crown",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_10.png"),
  squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 3)
).first_or_create!

Player.where(
  first_name: "Mateo",
  last_name: "Carvajal",
  nation: "ARG",
  age: 16,
  potential_high: 94,
  potential_low: 88,
  rating: 64,
  badge: "crown",
  status: "player",
  avatar: Avatar.find_by(photo: "avatar_11.png"),
  squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 3)
).first_or_create!





