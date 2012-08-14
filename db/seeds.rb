# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.destroy_all

a = Article.new
a.title = "Teaching Rails"
a.body = "I'm teaching Rails in Glasgow today"
a.save

a2 = Article.new(title: "Weather", body: "It's a bit cloudy today")
a2.save

a3 = Article.create(title: "Lunch", body: "Lunch will be served at 12")
a2.body += " and it might rain."
a2.save
