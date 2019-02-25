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

User.create!(
  email: 'douglasmberkley@gmail.com',
  password: ENV['ADMIN_PASSWORD']
)
