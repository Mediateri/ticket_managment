# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Route.create(start_point:'Kigali', end_point:'Gicumbi', cost:2500)
Stop.create(name: 'Nyaconga', from_point: 'Kigali', cost:'1000', route_id: 1)
Schedule.create(route_id:1, time:DateTime.now)
Car.create(plate_no:'we234', no_seats:2, schedule_id:1, driver:'mandela')
