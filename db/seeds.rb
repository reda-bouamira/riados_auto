# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
Model.destroy_all
Make.destroy_all
Transmission.destroy_all

8.times do
  make = Make.create(name: Faker::Vehicle.unique.make)

  3.times do
    model = Model.create(name: Faker::Vehicle.model(make.name))

    car = Car.create(make: make, model: model, trim: Faker::Vehicle.style)

    10.times do

    end

  end
end

manual_trans = Transmission.create(name: 'Manual')
auto_trans = Transmission.create(name: 'Automatic')

puts "Cars: #{Car.count}"
puts "Makes: #{Make.count}"
puts "Models: #{Model.count}"
puts "Transmission Types: #{Transmission.count}"