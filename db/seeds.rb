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

u1 = User.create(name: 'Hulk Hogan', height: '70', weight: '180', location: 'Boston', url: '', image: '')
u2 = User.create(name: 'John Cena', height: '73', weight: '170', location: 'Boston', url: '', image: '')
u3 = User.create(name: 'Eddie Washington', height: '75', weight: '160', location: 'Boston', url: '', image: '')
u4 = User.create(name: 'Miley Cyrus', height: '60', weight: '120', location: 'Boston', url: '', image: '')
u5 = User.create(name: 'Sharon Stone', height: '63', weight: '140', location: 'Boston', url: '', image: '')
u6 = User.create(name: 'Beyonce', height: '65', weight: '130', location: 'Boston', url: '', image: '')

