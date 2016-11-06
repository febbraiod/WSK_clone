# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create({title: 'Blue Chip', volatility_index: 5})
Category.create({title: 'Speculative', volatility_index: 12})
Category.create({title: 'Growth', volatility_index: 3})
Category.create({title: 'Cyclical', volatility_index: 7})

stock = Stock.create(company_name: 'ATNT', starting_price: 63, min_price: 53, max_price: 126)
stock.category = Category.find_by(title: 'Blue Chip')
stock.save

stock = Stock.create(company_name: 'Boing', starting_price: 145, min_price: 110, max_price: 280)
stock.category = Category.find_by(title: 'Blue Chip')
stock.save

stock = Stock.create(company_name: 'Xearox', starting_price: 128, min_price: 97, max_price: 250
stock.category = Category.find_by(title: 'Blue Chip')
stock.save

stock = Stock.create(company_name: 'YBM', starting_price: 219, min_price: 175, max_price: 350)
stock.category = Category.find_by(title: 'Blue Chip')
stock.save

stock = Stock.create(company_name: 'Yapple', starting_price: 72, min_price: 60, max_price: 180)
stock.category = Category.find_by(title: 'Blue Chip')
stock.save

stock = Stock.create(company_name: 'Bethleham', starting_price: 47, min_price: 11, max_price: 195)
stock.category = Category.find_by(title: 'Speculative')
stock.save

stock = Stock.create(company_name: 'Chryer', starting_price: 48, min_price: 2, max_price: 190)
stock.category = Category.find_by(title: 'Speculative')
stock.save

stock = Stock.create(company_name: 'Pan Am', starting_price: 26, min_price: 0.2, max_price: 110)
stock.category = Category.find_by(title: 'Speculative')
stock.save

stock = Stock.create(company_name: 'Strayhound', starting_price: 65, min_price: 8, max_price: 257)
stock.category = Category.find_by(title: 'Speculative')
stock.save

stock = Stock.create(company_name: 'Teradying', starting_price: 37, min_price: 1, max_price: 158)
stock.category = Category.find_by(title: 'Speculative')
stock.save

stock = Stock.create(company_name: 'American Depress', starting_price: 65, min_price: 42, max_price: 97)
stock.category = Category.find_by(title: 'Growth')
stock.save

stock = Stock.create(company_name: 'Exconrail', starting_price: 64, min_price: 45, max_price: 95)
stock.category = Category.find_by(title: 'Growth')
stock.save

stock = Stock.create(company_name: 'Firedmans Fund', starting_price: 67, min_price: 43, max_price: 101)
stock.category = Category.find_by(title: 'Growth')
stock.save

stock = Stock.create(company_name: 'Reebucks', starting_price: 38, min_price: 20, max_price: 56)
stock.category = Category.find_by(title: 'Growth')
stock.save

stock = Stock.create(company_name: 'Charles Schlob', starting_price: 34, min_price: 18, max_price: 51)
stock.category = Category.find_by(title: 'Growth')
stock.save

stock = Stock.create(company_name: 'Carnivore', starting_price: 34, min_price: 5, max_price: 68)
stock.category = Category.find_by(title: 'Cyclical')
stock.save

stock = Stock.create(company_name: 'Centipede', starting_price: 119, min_price: 58, max_price: 199)
stock.category = Category.find_by(title: 'Cyclical')
stock.save

stock = Stock.create(company_name: 'Coughman', starting_price: 34, min_price: 8, max_price: 72)
stock.category = Category.find_by(title: 'Cyclical')
stock.save

stock = Stock.create(company_name: 'Marrinot', starting_price: 60, min_price: 23, max_price: 170)
stock.category = Category.find_by(title: 'Cyclical')
stock.save

stock = Stock.create(company_name: 'Rattel', starting_price: 35, min_price: 20, max_price: 63)
stock.category = Category.find_by(title: 'Cyclical')
stock.save