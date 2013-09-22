# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Course.delete_all
Content.delete_all

Course.create(title: 'Training for your first marathon', description: "Get the proper diet, running schedule and gear info so that you're ready for the NYC marathon", url: 'http://www.psl.msu.edu/_images/Gulbransen_sm.jpg', image: 'http://www.flickr.com/photos/stijlfoto/6902027713/')

Course.create(title: 'Yoga', description: "The practice of yoga dates back five thousand years and its benefits have been repeatedly observed and documented over time. With regular practice, discipline and honest effort you will: reshape your body, reduce risk for sports injury, reduce the effects of stress.", url: 'http://www.flickr.com/photos/house4rent/6736529551/', image: 'http://www.flickr.com/photos/shebalso/9324617763/')

Course.create(title: 'Kickboxing', description: "Get a great cardio workout while practicing self defense.", url: 'http://www.flickr.com/photos/sirwiseowl/4997156954/', image: 'http://www.flickr.com/photos/neutralgroundwi/6065227723/')