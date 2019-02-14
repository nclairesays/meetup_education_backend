# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Event.destroy_all


# user1 = User.create(username: "emma", email: "emma@example.com", password: "0000", name: "Emma Gouti" , school: "Clear Brook High School")
# user2 = User.create(username: "claire", email: "claire@example.com", password: "0000", name: "Claire Nguyen" , school: "Clear Creek High School")
# user3 = User.create(username: "jakob", email: "jakob@example.com", password: "0000", name: "Jakob Bellamy" , school: "Clear Lake High School")
# user4 = User.create(username: "ryan", email: "ryan@example.com", password: "0000", name: "Ryan Daley" , school: "Clear Springs High School")


# maze10x10 = Maze.create({rows: 10, columns: 10})
# maze15x15 = Maze.create({rows: 15, columns: 15})
# maze20x20 = Maze.create({rows: 20, columns: 20})


sports = Interest.create('name': 'sports')
coding = Interest.create('name': 'coding')
math = Interest.create('name': 'math')
band = Interest.create('name': 'band')
leadership = Interest.create('name': 'leadership')
general = Interest.create('name': 'general')
robotics = Interest.create('name': 'robotics')
art = Interest.create('name': 'art')
home_ec = Interest.create('name': 'home_ec')
woodshop = Interest.create('name': 'woodshop')
dancing = Interest.create('name': 'dancing')
workshops = Interest.create('name': 'workshops')
networking = Interest.create('name': 'networking')


Event.create('title': 'Leadership Workshop', 'description': 'Learn to Lead', 'location': 'USC')
Event.create('title': 'Learn Javascript Workshop', 'description': 'Learn to code with javascript', 'location': 'flatiron school')
Event.create('title': 'Sports Outing', 'description': 'Come talk about sports techniques!', 'location': 'local park')
Event.create('title': 'Luncheon', 'description': 'Meet other students in the area!', 'location': 'local park')