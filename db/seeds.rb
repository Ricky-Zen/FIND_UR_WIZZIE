# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'destroying activities'

Booking.destroy_all
Activity.destroy_all
User.destroy_all
Theme.destroy_all

 p 'creating user and theme'
user = User.create!(first_name: 'Severus', last_name: 'Rogue', password: 'lollol', email: "a@at.at")
user2 = User.create!(first_name: 'Ronald', last_name: 'Weasley', password: 'ronaldbg', email: "ronald@weasley.po")
user3 = User.create!(first_name: 'Orochimaru', last_name: 'TheRealBadGuy', password: 'orochimaru', email: "orochimaru@akatsuki.jp")
user4 = User.create!(first_name: 'Luna', last_name: 'Aimebien', password: 'lunabg', email: "luna@lovegood.po")
user5 = User.create!(first_name: 'Rubeus', last_name: 'Hagrid', password: 'hagrid', email: "rubeus@hagrid.po")

sports = Theme.create!(name: 'Sports')
events = Theme.create!(name: 'Events')
leisure = Theme.create!(name: 'Leisure')
outdoors = Theme.create!(name: 'Outdoors')

p 'creating activities'

quidditch = Activity.create!(name: 'Match de quidditch', city: 'Rambouillet', description: 'gros match avec coups de tête autorisés', theme: sports, user: user)
gnomes = Activity.create!(name: 'Lancer de gnomes', city: 'London', description: 'balancer des petits', theme: sports, user: user2)
hippogriffe = Activity.create!(name: 'Vol en hippogriffe', city: 'Miami', description: "s'envoyer en l'air", theme: outdoors, user: user3)
balade = Activity.create!(name: 'Balade découverte dans la forêt interdite', city: 'Foret', description: 'Chaussures de pluie reccommandées', theme: outdoors, user: user4)
polynectar = Activity.create!(name: 'Atelier Polynectar', city: "Pub d'ivrognes", description: 'lever de coude', theme: leisure, user: user5)
visite= Activity.create!(name: 'Visite du ministère de la magie', city: 'london', description: 'Personnes silencieuses only', theme: leisure, user: user)
duel = Activity.create!(name: 'Duel de sorciers', city: 'Mont Fuji', description: 'se battre à mort', theme: events, user: user3)
conference = Activity.create!(name: 'Conférence sur les animaux fantastiques by Norbert Dragonneau ', city: 'Roubaix', description: 'Listen with your heart', theme: events, user: user4)
p 'creating a booking'
Booking.create!(activity: duel, price: duel.price, date: Date.today, user: user)
Booking.create!(activity: polynectar, price: polynectar.price, date: Date.today, user: user2)



