# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jordan = User.create(name: 'Jordan Speith', picture: 'jordan.jpg', handicap: 0)
rory = User.create(name: 'Rory Mcilroy', picture: 'rory.jpg', handicap: 0)
arnie = User.create(name: 'Arnold Palmer', picture: 'palmer.jpg', handicap: 0)
jacob = User.create(name: 'Jacob', picture: 'golfball.jpg', handicap: 12)
morgan = User.create(name: 'Morgan', picture: 'old_course_bridge.jpg', handicap: 11)

old_course = Course.create(name: 'St. Andrews Old Course', par: 72, yards: 6721, course_rating: 73.1, slope: 132)
mini_golf = Course.create(name: 'Minigolf Course', par: 45, yards: 379)
grant = Course.create(name: 'Grant in Milwaukee', par: 67, yards: 5213, course_rating: 64.5, slope: 103)

outing1 = Outing.create(date: Date.today)
outing2 = Outing.create(date: Date.new(2016, 9, 25))
outing3 = Outing.create(date: Date.new(2015, 7, 19))


jordan_at_old_course = Round.create(timestamp: Time.now, course_id: old_course.id, user_id: jordan.id, score: 66, outing_id: outing3.id)
rory_at_old_course = Round.create(timestamp:Time.now, course_id: old_course.id, user_id: rory.id, score: 73, outing_id: outing3.id)

arnie_mini_golfing = Round.create(timestamp: Time.now, course_id: mini_golf.id, user_id: arnie.id, score:1, outing_id: outing2.id)

jacob_at_grant = Round.create(timestamp: Time.now, course_id: grant.id, user_id: jacob.id, score: 99, outing_id: outing1.id)
morgan_at_grant = Round.create(timestamp: Time.now, course_id: grant.id, user_id: morgan.id, score: 100, outing_id: outing1.id)
