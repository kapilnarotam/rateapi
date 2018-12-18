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
