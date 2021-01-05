# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

atta=User.create({email:"atta@test1.com", password: "lashi"})

# destination1=Destination.create({user_id: 1, zipcode: 90503, available: true, description: "best place to camp for a short vacation", capacity: 200})
# destination2=Destination.create()
ghazvin = Destination.create(user_id: 2, name: "Ghavin")
sharjeh = Destination.create(user_id: 2, name: "Sharjeh")