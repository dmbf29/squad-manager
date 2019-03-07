# # formations = %w(3142 3412 3421 343 352 41212 4132 4141 4222 4231 424 4312 4321 433 433(2) 433(3) 433(4) 433(5) 4411 4411(2) 442 442(2) 451 451(2) 5212 5221 532 541)
# formations = ["three-four-three", "three-five-two", "four-five-one", "five-four-one", "five-three-two", "four-four-two", "four-three-three"]
# numbers = ["3-4-3", "3-5-2", "4-5-1", "5-4-1", "5-3-2", "4-4-2", "4-3-3"]

# formations.each_with_index do |formation, index|
#   number = formation.split("-")
#   number = numbers[index]
#   Formation.where(
#     name: formation,
#     number: number,
#     dfs: number.split("-")[0].to_i,
#     mfs: number.split("-")[1].to_i,
#     fws: number.split("-")[2].to_i
#   ).first_or_create!
# end

# user = User.find_by(email: 'douglasmberkley@gmail.com')
# if user.nil?
#   User.create!(
#     email: 'douglasmberkley@gmail.com',
#     password: ENV['ADMIN_PASSWORD']
#   )
# end

# squad = Squad.where(
#   user: user,
#   name: "Newcastle Youth",
#   formation: Formation.find_by(number: "4-3-3"),
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Wolff",
#   nation: "GER",
#   age: 16,
#   potential_high: 90,
#   potential_low: 80,
#   rating: 57,
#   badge: "seedling",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 4).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Schmidt",
#   nation: "GER",
#   age: 15,
#   potential_high: 94,
#   potential_low: 87,
#   rating: 60,
#   badge: "crown",
#   status: "prospect",
#   squad_place_id: squad.squad_rows.find_by(number: 4).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "Freddie",
#   last_name: "Woodman",
#   nation: "ENG",
#   age: 18,
#   potential_high: 80,
#   potential_low: 75,
#   rating: 71,
#   badge: "futbol",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 4).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "Paul",
#   last_name: "Dummet",
#   nation: "WAL",
#   age: 27,
#   potential_high: 76,
#   potential_low: 75,
#   rating: 71,
#   badge: "heart",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "Adam",
#   last_name: "Wilson",
#   nation: "ENG",
#   age: 19,
#   potential_high: 80,
#   potential_low: 75,
#   rating: 67,
#   badge: "futbol",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Schneider",
#   nation: "GER",
#   age: 18,
#   potential_high: 90,
#   potential_low: 80,
#   rating: 61,
#   badge: "gem",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 2)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Roth",
#   nation: "GER",
#   age: 18,
#   potential_high: 88,
#   potential_low: 80,
#   rating: 59,
#   badge: "gem",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 2)
# ).first_or_create!

# Player.where(
#   first_name: "Stefan",
#   last_name: "O'Conner",
#   nation: "ENG",
#   age: 22,
#   potential_high: 66,
#   potential_low: 60,
#   rating: 67,
#   badge: "dumpster",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 3)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Fierro",
#   nation: "ITA",
#   age: 18,
#   potential_high: 83,
#   potential_low: 77,
#   rating: 60,
#   badge: "futbol",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 3)
# ).first_or_create!

# Player.where(
#   first_name: "Jamie",
#   last_name: "Sterry",
#   nation: "ENG",
#   age: 23,
#   potential_high: 69,
#   potential_low: 63,
#   rating: 63,
#   badge: "lemon",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 4)
# ).first_or_create!

# Player.where(
#   first_name: "Lewis",
#   last_name: "Cass",
#   nation: "ENG",
#   age: 20,
#   potential_high: 74,
#   potential_low: 68,
#   rating: 60,
#   badge: "lemon",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 3).squad_places.find_by(number: 4)
# ).first_or_create!

# Player.where(
#   first_name: "Sean",
#   last_name: "Longstaff",
#   nation: "ENG",
#   age: 21,
#   potential_high: 80,
#   potential_low: 72,
#   rating: 68,
#   badge: "futbol",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Sepulveda",
#   nation: "ESP",
#   age: 17,
#   potential_high: 88,
#   potential_low: 82,
#   rating: 55,
#   badge: "gem",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Graf",
#   nation: "GER",
#   age: 16,
#   potential_high: 94,
#   potential_low: 88,
#   rating: 55,
#   badge: "crown",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "Miguel",
#   last_name: "Almiron",
#   nation: "GER",
#   age: 25,
#   potential_high: 85,
#   potential_low: 80,
#   rating: 82,
#   badge: "shield-alt",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 2)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Conceicao",
#   nation: "BRA",
#   age: 17,
#   potential_high: 94,
#   potential_low: 89,
#   rating: 62,
#   badge: "crown",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 2)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Perez",
#   nation: "ESP",
#   age: 17,
#   potential_high: 94,
#   potential_low: 82,
#   rating: 61,
#   badge: "gem",
#   status: "prospect",
#   squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 2)
# ).first_or_create!

# Player.where(
#   first_name: "Jack",
#   last_name: "Colback",
#   nation: "ENG",
#   age: 17,
#   potential_high: 71,
#   potential_low: 71,
#   rating: 71,
#   badge: "lemon",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 3)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Tavero",
#   nation: "ESP",
#   age: 17,
#   potential_high: 89,
#   potential_low: 82,
#   rating: 61,
#   badge: "gem",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 3)
# ).first_or_create!

# Player.where(
#   first_name: "Daniel",
#   last_name: "Barlasar",
#   nation: "ENG",
#   age: 22,
#   potential_high: 70,
#   potential_low: 65,
#   rating: 63,
#   badge: "lemon",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 2).squad_places.find_by(number: 3)
# ).first_or_create!

# Player.where(
#   first_name: "Rolando",
#   last_name: "Aarons",
#   nation: "ENG",
#   age: 23,
#   potential_high: 77,
#   potential_low: 71,
#   rating: 71,
#   badge: "heart",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "Victor",
#   last_name: "Fernandez",
#   nation: "ESP",
#   age: 21,
#   potential_high: 80,
#   potential_low: 70,
#   rating: 69,
#   badge: "futbol",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Moraes",
#   nation: "BRA",
#   age: 18,
#   potential_high: 94,
#   potential_low: 89,
#   rating: 64,
#   badge: "crown",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 1)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Schmidt",
#   nation: "GER",
#   age: 19,
#   potential_high: 89,
#   potential_low: 83,
#   rating: 67,
#   badge: "gem",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 2)
# ).first_or_create!

# Player.where(
#   first_name: "Yannick",
#   last_name: "Toure",
#   nation: "SWI",
#   age: 19,
#   potential_high: 80,
#   potential_low: 72,
#   rating: 66,
#   badge: "futbol",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 2)
# ).first_or_create!

# Player.where(
#   first_name: "Elias",
#   last_name: "Sorensen",
#   nation: "DEN",
#   age: 19,
#   potential_high: 80,
#   potential_low: 72,
#   rating: 64,
#   badge: "futbol",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 2)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Neves",
#   nation: "ESP",
#   age: 17,
#   potential_high: 94,
#   potential_low: 89,
#   rating: 68,
#   badge: "crown",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 3)
# ).first_or_create!

# Player.where(
#   first_name: "First",
#   last_name: "Ramos",
#   nation: "ESP",
#   age: 18,
#   potential_high: 94,
#   potential_low: 85,
#   rating: 67,
#   badge: "crown",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 3)
# ).first_or_create!

# Player.where(
#   first_name: "Callum",
#   last_name: "Roberts",
#   nation: "ENG",
#   age: 22,
#   potential_high: 74,
#   potential_low: 68,
#   rating: 63,
#   badge: "lemon",
#   status: "player",
#   squad_place_id: squad.squad_rows.find_by(number: 1).squad_places.find_by(number: 3)
# ).first_or_create!

(1..28).to_a.each do |number|
  Avatar.where(
    photo: "avatar_#{number}.png"
  ).first_or_create!
end




