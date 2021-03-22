# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Category.create(id: 1, name: 'Video Games')
Category.create(id: 2, name: 'Phones')
Category.create(id: 3, name: 'Computers')
Category.create(id: 4, name: 'Robotics')

puts 'Create Categories'