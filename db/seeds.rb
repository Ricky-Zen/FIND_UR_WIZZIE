# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Activity.destroy_all
Theme.destroy_all
User.destroy_all
Booking.destroy_all

user = User.create!(first_name: 'lol', last_name: 'lol', password: 'lollol', email: "a@at.at")
sports = Theme.create!(name: 'sports')
a1 = Activity.create!(name: 'quidditch', city: 'london', description: 'jouer balle', theme: sports, user: user)
a2 = Activity.create!(name: 'quidditch', city: 'london', description: 'jouer balle', theme: sports, user: user)
a3 = Activity.create!(name: 'quidditch', city: 'london', description: 'jouer balle', theme: sports, user: user)
a4 = Activity.create!(name: 'quidditch', city: 'london', description: 'jouer balle', theme: sports, user: user)
a5 = Activity.create!(name: 'quidditch', city: 'london', description: 'jouer balle', theme: sports, user: user)
a6 = Activity.create!(name: 'quidditch', city: 'london', description: 'jouer balle', theme: sports, user: user)
Booking.create!(activity: a1, price: a1.price, date: Date.today, user: user)


