puts 'Cleaning database'

Product.destroy_all
User.destroy_all

puts 'Create products'

Product.new(title: "Sporting Casino", description:"color", quantity:"14",photo: "casino.png", size: "M", category: "t-shirt", price_cents: "1099").save
Product.new(title: "Hotel Mercedes", description:"color", quantity:"14", photo: "mercedes.png", size: "L", category: "t-shirt", price_cents: "1099").save
Product.new(title: "Place des Landais", description:"color", quantity:"14", photo: "place.png", size: "S", category: "t-shirt", price_cents: "1099").save

puts 'Create Users'

User.new(email: "tony@botmail.com", password: "azerty").save
