# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Movie.create(name: "Test movie", path: "/some/path", imdb: "tt12345678", size: 1)
Agent.create(name: "jaco-agent", last_checkin_time: Time.now)
