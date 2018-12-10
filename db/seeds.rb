# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Message.destroy_all
User.create(username:"ttt", password: "testtest")
Message.create(body:"Welcome aboard!",user:User.last)
User.create(username:"test", password: "testtest")
Message.create(body:"Glad to be here!",user:User.last)
User.create(username:"john", password: "testtest")
Message.create(body:"Where am I?",user:User.last)