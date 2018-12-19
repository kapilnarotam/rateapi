# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Currency.create(currency_name: "USD")
Currency.create(currency_name: "OMIR")
Currency.create(currency_name: "RTGS")
Currency.create(currency_name: "Bond")
Currency.create(currency_name: "ZAR")

Market.create(base_currency_id: 2 ,quoted_currency_id: 3)
Market.create(base_currency_id: 1 ,quoted_currency_id: 3)
Market.create(base_currency_id: 1 ,quoted_currency_id: 4)
Market.create(base_currency_id: 4 ,quoted_currency_id: 3)
Market.create(base_currency_id: 2 ,quoted_currency_id: 3)
Market.create(base_currency_id: 1 ,quoted_currency_id: 5)
Market.create(base_currency_id: 5 ,quoted_currency_id: 4)
Market.create(base_currency_id: 5 ,quoted_currency_id: 3)

Rate.create(market_id: 2 , price: 230.0)
Rate.create(market_id: 3 , price: 170.0)
Rate.create(market_id: 4 , price: 20.0)
Rate.create(market_id: 1 , price: 438.29)
Rate.create(market_id: 6 , price: 14.38)
Rate.create(market_id: 7 , price: 0.2)
Rate.create(market_id: 8 , price: 0.25)