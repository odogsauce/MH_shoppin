puts 'Cleaning database'

Product.destroy_all

puts 'Create products'

Product.new(title: "Sporting Casino", description:"color", quantity:"14",photo: "casino.png", size: "M", category: "t-shirt").save
Product.new(title: "Hotel Mercedes", description:"color", quantity:"14", photo: "mercedes.png", size: "L", category: "t-shirt").save
Product.new(title: "Place des Landais", description:"color", quantity:"14", photo: "place.png", size: "S", category: "t-shirt").save
