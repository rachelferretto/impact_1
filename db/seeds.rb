# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

RegUser.destroy_all
Event.destroy_all
AdminUser.destroy_all
Rsvp.destroy_all

harry = RegUser.create(first_name: "Harry", last_name: "Potter", email: "harry@leaheramo.tech", school: "Hogwarts", suburb: "Hogsmeade", active_sub: true, contact_num: "111")

hermoine = RegUser.create(first_name: "Hermione", last_name: "Granger", email: "hermione@leaheramo.tech", school: "Hogwarts", suburb: "Hogsmeade", active_sub: true, contact_num: "222")

ron = RegUser.create(first_name: "Ron", last_name: "Weasley", email: "ron@leaheramo.tech", school: "Hogwarts", suburb: "Hogsmeade", active_sub: true, contact_num: "333")

admin = AdminUser.create(firstname: 'Kathy', lastname: 'Admin', email: "admin@email.com" , password:'pudding')

event1 = Event.create(active: true, subject: "Christmas 2018" , description: "Help us put together bags of love for women and children in need this Christmas" , address: "Glen Eira College Sports Hall",  date_time: DateTime.new(2018, 12,1))

event2 = Event.create(active: true, subject: "Mum's day 2018" , description: "Help us put together bags of love for mums and children in need this Mum's day" , address: "Glen Eira College Sports Hall",  date_time: DateTime.new(2018, 5, 13))

rsvp1 = Rsvp.create(reg_user: RegUser.first, event: Event.first, active: true)
