Location.destroy_all

pasture = Location.new(name: 'pasture')
pasture.unicorns.new(
  name: 'Danny',
  color: 'purple'
)
pasture.save

barn = Location.new(name: 'barn')
barn.unicorns.new(
  name: 'Johnson',
  color: 'green'
)
barn.save

corral = Location.new(name: 'corral')
corral.unicorns.new(
  name: 'Secretly just a horse',
  color: 'brown'
)
corral.save
