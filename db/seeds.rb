# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

        

50.times do |n|
  name  = Faker::Name.name
  
   
  Restaurant.create!(name:  name,
             location: "Palakkad",
             restaurant_type: "Indian",
             rating: "4",
             open:     true)
end



restaurants = Restaurant.order(:created_at).take(6)
50.times do
 
  restaurants.each { |restaurant| restaurant.dishes.create!(name:  "Chicken fry",
             description: "NIce food Bro",
             vegeterian: false,
             category: "Starter",
             price:     "120") }
end

   
  