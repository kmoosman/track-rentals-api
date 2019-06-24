# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# events: [{name: "USGP Round 1", date: "April 24th, 2019", location: "Austin, TX", 
#             transponders: [{number: 1, rented: true, rented_by: "John Williams" },
#                           {number: 2, rented: false, rented_by: ""}] },
#     {name: "USGP Round 2", date: "June 26th, 2019", location: "Tooele, UT", 
#     transponders: [{number: 1, rented: true, rented_by: "John Williams"},
#                   {number: 2, rented: false, rented_by: ""}]}
#             ],

Event.create({name: "USGP Round 1", date: "April 24, 2019", location: "Salt Lake City, TX"})
Event.create({name: "USGP Round 2", date: "May 31, 2019", location: "Austin, TX"})
Transponder.create({ number: 1, rented: true, rented_by: "John Williams", event_id: 1})
Transponder.create({ number: 2, rented: true, rented_by: "", event_id: 1})
Transponder.create({ number: 1, rented: true, rented_by: "Katie Moosman", event_id: 2})
Transponder.create({ number: 2, rented: true, rented_by: "", event_id: 2})
