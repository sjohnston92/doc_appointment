# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

docs =["Dr.Tomb","Dr.Doom","Dr.Boom", "Dr.Flume","Dr.Earl"]
month =["Jan","Feb","Dec"]

10.times do |i|
  p = User.create(name:Faker::Name.name)
  d = Doctor.create(docs.sample)
  Appointment.create(doctor_id: d.id, user_id: p.id, date: month.sample)
end

puts "seeded"