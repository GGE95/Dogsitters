# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

require 'faker'

100.times do
  city = City.create!(city_name: Faker::WorldCup.city)
end

100.times do
  dog = Dog.create!(name: Faker::Name.name, city_id: rand(1..100))
end

100.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.name, city_id: rand(1..100))
end

1000.times do
  stroll = Stroll.create!(dog_id: rand(1..100), dogsitter_id: rand(1..100))
end