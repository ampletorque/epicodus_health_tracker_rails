# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

foods = Food.create([{name: 'banana', calories: 80}, {name: 'ham sandwich', calories: 200}, {name: 'apple pie', calories: 250}])

exercises = Exercise.create([{name: 'running', calories_per_hour: 30}, {name: 'chin-ups', calories_per_hour: 15}, {name: 'couch-sitting', calories_per_hour: 0}])
