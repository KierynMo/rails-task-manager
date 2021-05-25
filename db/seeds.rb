# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
p 'deleting tasks'
Task.delete_all
p 'all tasks deleted'
p 'seeding 10 tasks'
10.times { Task.create!(title: Faker::Hipster.word, details: Faker::Hipster.sentence) }
p 'seeded db'
