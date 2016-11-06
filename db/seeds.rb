Category.create({title: 'Blue Chip', volatility_index: 7})
Category.create({title: 'Speculative', volatility_index: 17})
Category.create({title: 'Growth', volatility_index: 4})
Category.create({title: 'Cyclical', volatility_index: 8})

stock = Stock.create(company_name: 'ATNT', starting_value: 63, min_value: 53, max_value: 126)
stock.category = Category.find_by(title: 'Blue Chip')
stock.save

stock = Stock.create(company_name: 'Boing', starting_value: 145, min_value: 110, max_value: 280)
stock.category = Category.find_by(title: 'Blue Chip')
stock.save

stock = Stock.create(company_name: 'Xearox', starting_value: 128, min_value: 97, max_value: 250)
stock.category = Category.find_by(title: 'Blue Chip')
stock.save

stock = Stock.create(company_name: 'YBM', starting_value: 219, min_value: 175, max_value: 350)
stock.category = Category.find_by(title: 'Blue Chip')
stock.save

stock = Stock.create(company_name: 'Yapple', starting_value: 72, min_value: 60, max_value: 180)
stock.category = Category.find_by(title: 'Blue Chip')
stock.save

stock = Stock.create(company_name: 'Bethleham', starting_value: 47, min_value: 11, max_value: 195)
stock.category = Category.find_by(title: 'Speculative')
stock.save

stock = Stock.create(company_name: 'Chryer', starting_value: 48, min_value: 2, max_value: 190)
stock.category = Category.find_by(title: 'Speculative')
stock.save

stock = Stock.create(company_name: 'Pan Am', starting_value: 26, min_value: 0.2, max_value: 110)
stock.category = Category.find_by(title: 'Speculative')
stock.save

stock = Stock.create(company_name: 'Strayhound', starting_value: 65, min_value: 8, max_value: 257)
stock.category = Category.find_by(title: 'Speculative')
stock.save

stock = Stock.create(company_name: 'Teradying', starting_value: 37, min_value: 1, max_value: 158)
stock.category = Category.find_by(title: 'Speculative')
stock.save

stock = Stock.create(company_name: 'American Depress', starting_value: 65, min_value: 42, max_value: 97)
stock.category = Category.find_by(title: 'Growth')
stock.save

stock = Stock.create(company_name: 'Exconrail', starting_value: 64, min_value: 45, max_value: 95)
stock.category = Category.find_by(title: 'Growth')
stock.save

stock = Stock.create(company_name: 'Firedmans Fund', starting_value: 67, min_value: 43, max_value: 101)
stock.category = Category.find_by(title: 'Growth')
stock.save

stock = Stock.create(company_name: 'Reebucks', starting_value: 38, min_value: 20, max_value: 56)
stock.category = Category.find_by(title: 'Growth')
stock.save

stock = Stock.create(company_name: 'Charles Schlob', starting_value: 34, min_value: 18, max_value: 51)
stock.category = Category.find_by(title: 'Growth')
stock.save

stock = Stock.create(company_name: 'Carnivore', starting_value: 34, min_value: 5, max_value: 68)
stock.category = Category.find_by(title: 'Cyclical')
stock.save

stock = Stock.create(company_name: 'Centipede', starting_value: 119, min_value: 58, max_value: 199)
stock.category = Category.find_by(title: 'Cyclical')
stock.save

stock = Stock.create(company_name: 'Coughman', starting_value: 34, min_value: 8, max_value: 72)
stock.category = Category.find_by(title: 'Cyclical')
stock.save

stock = Stock.create(company_name: 'Marrinot', starting_value: 60, min_value: 23, max_value: 170)
stock.category = Category.find_by(title: 'Cyclical')
stock.save

stock = Stock.create(company_name: 'Rattel', starting_value: 35, min_value: 20, max_value: 63)
stock.category = Category.find_by(title: 'Cyclical')
stock.save