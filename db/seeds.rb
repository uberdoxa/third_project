# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Challenge.destroy_all
Level.destroy_all

3.times do |i|
  Level.create(title: "Level "+(i+1).to_s, description: "Description for Level "+(i+1).to_s)
  Challenge.create(title: "Challenge 1", description: "Spicy jalapeno tenderloin jowl minim picanha rump consequat, shoulder pariatur cupidatat doner cillum hamburger.", level_id: Level.last.id, question: "What is a pork in PHP?", answer: "$x = 'pork';")
end
