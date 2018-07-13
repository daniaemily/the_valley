# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# robert_mondavi = Winery.create(name: 'Robert Mondavi')
# duckhorn = Winery.create(name: 'Duckhorn')
# chateau_montelena = Winery.create(name: 'Chateau Montelena')
robert_mondavi = Winery.find_by(name: 'Robert Mondavi')
duckhorn = Winery.find_by(name: 'Duckhorn')
chateau_montelena = Winery.find_by(name: 'Chateau Montelena')

tastings = [
  { name: "Vineyard Room", reservation_required?: nil, price_min: 25, price_max: 50, is_private?: nil, winery_id: robert_mondavi.id },
  { name: "To Kalon Room", reservation_required?: nil, price_min: 8, price_max: 50, is_private?: nil, winery_id: robert_mondavi.id },
  { name: "Spotlight Lounge", reservation_required?: nil, price_min: 0, price_max: 20, is_private?: nil, winery_id: robert_mondavi.id },
  { name: "Private Large Group Tasting", reservation_required?: true, price_min: 35, price_max: true, is_private?: nil, winery_id: robert_mondavi.id },
  { name: "Portfolio Tasting", reservation_required?: true, price_min: 40, price_max: nil, is_private?: nil, winery_id: duckhorn.id },
  { name: "Tasting", reservation_required?: nil, price_min: 25, price_max: 50, is_private?: nil, winery_id: chateau_montelena.id }
]

Tasting.create(tastings)


