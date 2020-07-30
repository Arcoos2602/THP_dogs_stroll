# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

races = ["Bouledogue Anglais", "Coker Anglais", "Bouledogue Francais", "Berger Allemeand", "Carlin", "Bouvier Bernois", "Husky",
         "Chihuahua", "Rottweiler", "Pitbull"]
require 'faker'

15.times do
	city = City.create(city_name: Faker::Address.city)
	dog = Dog.create(name: Faker::Creature::Dog.name, race: races[rand(0..(races.length))], city: city)
	dog_sit = Dogsitter.create(name: Faker::Name.name, city: city)
	Stroll.create(dog: dog, dogsitter: dog_sit)
end