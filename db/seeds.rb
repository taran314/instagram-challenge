# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(forename: "Tarandeep", lastname: "Nandhra", username: "taran314", password: "password123").save
for i in 1..10
  Post.create(username: "taran314", description: "cute dog photo #{i}", image: "https://placedog.net/800/640?id=#{i}", user_id: "1").save
end

