# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{ login: 'user1', password: 'glbrcpass'}, { login: 'user2', password: 'glbrcpass'}, { login: 'user3', password: 'glbrcpass'}])
Application.create([
  { name: 'Google', description: 'Search Engine', color: 'Red', default_status: 'Yes', link: 'https://www.google.com/' },
  { name: 'Wisc', description: 'UW homepage', color: 'Blue', default_status: 'No', link: 'https://www.wisc.edu/' },
  { name: 'GLBRC', description: 'Great Lakes Bioenergy Research Center', color: 'Yellow', default_status: 'Yes', link: 'https://www.glbrc.org/' },
  { name: 'WEI', description: 'Wisconsin Energy Institute', color: 'Green', default_status: 'No', link: 'https://energy.wisc.edu/' },
  { name: 'Twitter', description: 'Twitter', color: 'Purple', default_status: 'No', link: 'https://twitter.com/' }
])
