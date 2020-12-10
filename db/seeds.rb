require "open-uri"

puts 'Cleaning database'

Order.destroy_all
Product.destroy_all
User.destroy_all

puts 'OK'

puts 'Create products'

file = URI.open('https://res.cloudinary.com/dwopswmlt/image/upload/v1607528091/casino_vt6lfo.png')
product1 = Product.new(title: "Sporting Casino", description:"color", quantity:"14", size: "M", category: "t-shirt", price_cents: "1099")
product1.photo.attach(io: file, filename: 'casino.png', content_type: 'image/png')
product1.save!

file = URI.open('https://res.cloudinary.com/dwopswmlt/image/upload/v1607528092/mercedes_h7jnyp.png')
product2 = Product.new(title: "Hotel Mercedes", description:"color", quantity:"14", size: "L", category: "t-shirt", price_cents: "1099")
product2.photo.attach(io: file, filename: 'mercedes.png', content_type: 'image/png')
product2.save!


file = URI.open('https://res.cloudinary.com/dwopswmlt/image/upload/v1607528092/place_gju6s7.png')
product3 = Product.new(title: "Place des Landais", description:"color", quantity:"14", size: "S", category: "t-shirt", price_cents: "1099")
product3.photo.attach(io: file, filename: 'place.png', content_type: 'image/png')
product3.save!

puts 'OK'


puts 'Create Users'

user = User.new(email: "tony@botmail.com", password: "azerty").save

puts 'OK'
