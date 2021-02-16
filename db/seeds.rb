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

user = User.create(first_name: 'lol', last_name: 'lol', password: 'lollol', email: "a@at.at")
sports = Theme.create(name: 'sports')
Activity.create(name: 'quidditch', city: 'london', description: 'jouer balle', theme_id: Theme.first.id, user_id: User.first.id)
Activity.create(name: 'quidditch', city: 'london', description: 'jouer balle', theme_id: Theme.first.id, user_id: User.first.id)
Activity.create(name: 'quidditch', city: 'london', description: 'jouer balle', theme_id: Theme.first.id, user_id: User.first.id)
Activity.create(name: 'quidditch', city: 'london', description: 'jouer balle', theme_id: Theme.first.id, user_id: User.first.id)
Activity.create(name: 'quidditch', city: 'london', description: 'jouer balle', theme_id: Theme.first.id, user_id: User.first.id)
Activity.create(name: 'quidditch', city: 'london', description: 'jouer balle', theme_id: Theme.first.id, user_id: User.first.id)
