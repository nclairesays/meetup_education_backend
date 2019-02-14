Interest.destroy_all
User.destroy_all
Event.destroy_all

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
Event.create('title': 'Learn Javascript Workshop', 'description': 'Learn to code with javascript', 'location': 'Flatiron School')
Event.create('title': 'Sports Outing', 'description': 'Come talk about sports techniques!', 'location': 'Discover Green')
Event.create('title': 'Luncheon', 'description': 'Meet other students in the area!', 'location': 'Santa Anita Park')


# errors if no user . fix later.