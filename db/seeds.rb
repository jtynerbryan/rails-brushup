# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

patient = Patient.create(name: "Jesse Tyner-Bryan", age: 29, address: "74 Oxford Street", phone_number: "8608789267")

physician = Physician.create(name: "Roberta Moss", age: 65, address: "150 Kane Street", phone_number: "8606792345", expertise_area: "General Practioner")

appointment = Appointment.create(title: "pyhsical exam", date: Date.parse("20180613"), location: "Kane Street Office", patient_id: 10, physician_id: 1)
