# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
require 'json'
require 'pp'

Vehicle.destroy_all
Car.destroy_all
Model.destroy_all
Make.destroy_all
Transmission.destroy_all

manual_trans = Transmission.create(name: 'Manual')
auto_trans = Transmission.create(name: 'Automatic')


# aston_file = File.read "app/assets/json/aston.json"
# aston_martin_json = JSON.parse(aston_file)

# aston_martin_json['Results'].each do |data|
#   make = Make.create(name: data["Make_Name"])
#   model = Model.create(name: data["Model_Name"])
#   car = Car.create(make: make, model: model, trim: Faker::Vehicle.style)
#   vin = Faker::Vehicle.unique.vin
#   price = Faker::Number.number(6)
#   year = 2018
#   color = Faker::Color.color_name
#   transmission = Transmission.order("RANDOM()").first

#   Vehicle.create(vin: vin, car: car, year: year, color: color, transmission: transmission, price: price)
# end

# rolls_file = File.read "app/assets/json/rolls.json"
# rolls_json = JSON.parse(rolls_file)

# rolls_json['Results'].each do |data|
#   make = Make.create(name: data["Make_Name"])
#   model = Model.create(name: data["Model_Name"])
#   car = Car.create(make: make, model: model, trim: Faker::Vehicle.style)
#   vin = Faker::Vehicle.unique.vin
#   price = Faker::Number.number(6)
#   year = 2018
#   color = Faker::Color.color_name
#   transmission = Transmission.order("RANDOM()").first

#   Vehicle.create(vin: vin, car: car, year: year, color: color, transmission: transmission, price: price)
# end

8.times do
  make = Make.create(name: Faker::Vehicle.unique.make)

  if make.valid?
    3.times do
      model = Model.create(name: Faker::Vehicle.model(make.name))

      car = Car.create(make: make, model: model, trim: Faker::Vehicle.style)

      10.times do
        vin = Faker::Vehicle.unique.vin
        price = Faker::Number.number(5)
        year = Faker::Number.between(2010, 2018)
        color = Faker::Color.color_name
        transmission = Transmission.order("RANDOM()").first

        Vehicle.create(vin: vin, car: car, year: year, color: color, transmission: transmission, price: price)
      end
    end
  end
end

puts "Cars: #{Car.count}"
puts "Makes: #{Make.count}"
puts "Models: #{Model.count}"
puts "Transmission Types: #{Transmission.count}"
puts "Vehicles: #{Vehicle.count}"