# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all


#create cities
city1 = City.create(city_name: 'Caen')
city2 = City.create(city_name: 'Angers')
city3 = City.create(city_name: 'Paris')
city4 = City.create(city_name: 'Marseilles')
puts "4 cities created"


# create 50 dogs
arr_dog = []
50.times do
  dog = Dog.create(name: Faker::Creature::Dog.name)
  dog.city = [city1, city2, city3, city4].sample
  dog.save
  arr_dog << dog
end
puts "50 dogs created"

#create all the values in the table
20.times do 
  dogsitter = Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)#create 20 Dogsitter
  dogsitter.city = [city1, city2, city3, city4].sample #add city to doctor
  dogsitter.save
  stroll1 = Stroll.create(dogsitter: dogsitter, dog: arr_dog.sample)#create appointment
  stroll2 = Stroll.create(dogsitter: dogsitter, dog: arr_dog.sample)#create appointment

  stroll1.city = [city1, city2, city3, city4].sample#add city to appointment
  stroll1.save
  stroll2.city = [city1, city2, city3, city4].sample#add city to appointment
  stroll2.save
  #add 2 specialty per doctor
end
puts "20 dogsitters created"
puts "20 strolls created"
puts "All values has been created!"