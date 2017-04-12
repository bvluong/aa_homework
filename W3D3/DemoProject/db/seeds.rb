# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bryant = Person.create(name: 'Bryant', house_id: 1)
laney = Person.create(name: 'Laney', house_id: 1)

home = House.create(address: '763 Lakehaven dr')
sf = House.create(address: '630 Leavensworth')
