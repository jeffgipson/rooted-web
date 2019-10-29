# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.where(email: "user@rootedweb.com").first_or_create.update(email: "user@rootedweb.com",
    password:              "password123",
    password_confirmation: "password123")

User.where(email: "admin@rootedweb.com").first_or_create.update(email: "admin@rootedweb.com",
    password:              "password123",
    password_confirmation: "password123")
