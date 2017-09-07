# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Categories
general = Category.create!(name: 'General', description: 'Just a general confession.')
dark = Category.create!(name: 'Dark', description: 'Confessions that make the skin crawl')
heartwarming = Category.create!(name: 'Heartwarming', description: 'Give us all the feels')
gross = Category.create!(name: 'Gross', description: 'Everybody poops. Not everybody eats it.')
steamy = Category.create!(name: 'Steamy', description: 'Things that make you go "Ohhhh Myyyy"')

# Confessions - just to get the ball rolling
general_confession = Confession.create!(text: 'I have an inordinate number of socks', category: general)
dark_confession = Confession.create!(text: "I killed my neighbor's cat when I was 13", category: dark)
heartwarming_confession = Confession.create!(text: 'I love my wife very much', category: heartwarming)
gross_confession = Confession.create!(text: 'I touched a bug once.', category: gross)
steamy_confession = Confession.create!(text: 'I kissed a girl and I liked it', category: steamy)

