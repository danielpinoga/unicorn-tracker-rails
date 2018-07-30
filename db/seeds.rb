Location.destroy_all

pasture = Location.new(name: 'pasture')
pasture.unicorns.new(
  name: FFaker::Name.name,
  color: FFaker::Color.name
)
pasture.save

barn = Location.new(name: 'barn')
barn.unicorns.new(
  name: FFaker::Name.name,
  color: FFaker::Color.name
)
barn.save

corral = Location.new(name: 'corral')

3.times do
  corral.unicorns.new(
    name: FFaker::Name.name,
    color: FFaker::Color.name
  )
end
corral.save

