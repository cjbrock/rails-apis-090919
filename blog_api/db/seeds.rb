# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.create(title: "second blog post", author: "Matt", content: "Star Wars rules", likes: 100)
Post.create(title: "third blog post", author: "Dean", content: "Writing is fun", likes: 100)
Post.create(title: "fourth blog post", author: "Rich", content: "Coral is pretty", likes: 100)
Post.create(title: "fifth blog post", author: "Alfonso", content: "Anything", likes: 100)
