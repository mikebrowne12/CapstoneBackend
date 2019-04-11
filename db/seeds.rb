# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Neighborhood.create!(name: "Near North Side")
Neighborhood.create!(name: "Loop")
Neighborhood.create!(name: "Near South Side")
Neighborhood.create!(name: "North Center")
Neighborhood.create!(name: "Lakeview")
Neighborhood.create!(name: "Lincoln Park")
Neighborhood.create!(name: "Avondale")
Neighborhood.create!(name: "Logan Square")
Neighborhood.create!(name: "Rogers Park")
Neighborhood.create!(name: "West Ridge")
Neighborhood.create!(name: "Uptown")
Neighborhood.create!(name: "Lincoln Square")
Neighborhood.create!(name: "Edison Park")
Neighborhood.create!(name: "Norwood Park")
Neighborhood.create!(name: "Jefferson Park")
Neighborhood.create!(name: "Forest Glen")
Neighborhood.create!(name: "North Park")
Neighborhood.create!(name: "Albany Park")
Neighborhood.create!(name: "O'Hare")
Neighborhood.create!(name: "Edgewater")
Neighborhood.create!(name: "Portage Park")
Neighborhood.create!(name: "Irving Park")
Neighborhood.create!(name: "Dunning")
Neighborhood.create!(name: "Montclare")
Neighborhood.create!(name: "Belmont Cragin")
Neighborhood.create!(name: "Hermosa")
Neighborhood.create!(name: "Humboldt Park")
Neighborhood.create!(name: "West Town")
Neighborhood.create!(name: "Austin")
Neighborhood.create!(name: "West Garfield Park")
Neighborhood.create!(name: "East Garfield Park")
Neighborhood.create!(name: "Near West Side")
Neighborhood.create!(name: "North Lawndale")
Neighborhood.create!(name: "South Lawndale")
Neighborhood.create!(name: "Lower West Side")
Neighborhood.create!(name: "Armour Square")
Neighborhood.create!(name: "Douglas")
Neighborhood.create!(name: "Oakland")
Neighborhood.create!(name: "Fuller Park")
Neighborhood.create!(name: "Grand Boulevard")
Neighborhood.create!(name: "Kenwood")
Neighborhood.create!(name: "Washington Park")
Neighborhood.create!(name: "Hyde Park")
Neighborhood.create!(name: "Woodlawn")
Neighborhood.create!(name: "South Shore")
Neighborhood.create!(name: "Bridgeport")
Neighborhood.create!(name: "Greater Grand Crossing")
Neighborhood.create!(name: "Garfield Ridge")
Neighborhood.create!(name: "Archer Heights")
Neighborhood.create!(name: "Brighton Park")
Neighborhood.create!(name: "McKinley Park")
Neighborhood.create!(name: "New City")
Neighborhood.create!(name: "West Elsdon")
Neighborhood.create!(name: "Gage Park")
Neighborhood.create!(name: "Clearing")
Neighborhood.create!(name: "West Lawn")
Neighborhood.create!(name: "Chicago Lawn")
Neighborhood.create!(name: "West Englewood")
Neighborhood.create!(name: "Englewood")
Neighborhood.create!(name: "Chatham")
Neighborhood.create!(name: "Avalon Park")
Neighborhood.create!(name: "South Chicago")
Neighborhood.create!(name: "Burnside")
Neighborhood.create!(name: "Calumet Heights")
Neighborhood.create!(name: "Roseland")
Neighborhood.create!(name: "Pullman")
Neighborhood.create!(name: "South Deering")
Neighborhood.create!(name: "East Side")
Neighborhood.create!(name: "West Pullman")
Neighborhood.create!(name: "Riverdale")
Neighborhood.create!(name: "Hegewisch")
Neighborhood.create!(name: "Ashburn")
Neighborhood.create!(name: "Auburn Gresham")
Neighborhood.create!(name: "Beverly")
Neighborhood.create!(name: "Washington Heights")
Neighborhood.create!(name: "Mount Greenwood")
Neighborhood.create!(name: "Morgan Park")


User.create!(user_name: "mike.browne", email: "mike@email.com", password: "password", neighborhood_id: 1)
User.create!(user_name: "peter.jang", email: "peter@email.com", password: "password", neighborhood_id: 1)
User.create!(user_name: "john.smith", email: "john@email.com", password: "password", neighborhood_id: 1)
User.create!(user_name: "kelly.johnson", email: "kelly@email.com", password: "password", neighborhood_id: 1)
User.create!(user_name: "elizabeth.toews", email: "elizabeth@email.com", password: "password", neighborhood_id: 1)
User.create!(user_name: "daron.collins", email: "daron@email.com", password: "password", neighborhood_id: 1)
User.create!(user_name: "emmit.kane", email: "emmit@email.com", password: "password", neighborhood_id: 1)

Attraction.create!(name: "Wiener Circle", address: "", neighborhood_id: 6)
Attraction.create!(name: "McDonalds", address: "", neighborhood_id: 1)
Attraction.create!(name: "Small Cheval", address: "", neighborhood_id: 8)
Attraction.create!(name: "Uncle Remus Chicken", address: "", neighborhood_id: 29)
Attraction.create!(name: "Kuma's Corner", address: "", neighborhood_id: 7)
Attraction.create!(name: "Palmisano Park", address: "", neighborhood_id: 46)
Attraction.create!(name: "Sears Tower", address: "", neighborhood_id: 2)

Vote.create!(user_id: 1, attraction_id: 3, value: true)
Vote.create!(user_id: 2, attraction_id: 3, value: false)
Vote.create!(user_id: 3, attraction_id: 3, value: false)
Vote.create!(user_id: 4, attraction_id: 3, value: false)
Vote.create!(user_id: 1, attraction_id: 1, value: true)