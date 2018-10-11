# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Model.destroy_all
Make.destroy_all

8.times do
  make = Make.create(name: Faker::Vehicle.unique.make)

  3.times do
    Model.create(name: Faker::Vehicle.model(make.name))
  end
end