# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

parkinglots = [{name: 'Main Lot', rows: '10'}]
parkinglots.each do |lot|
	Parkinglot.create!(lot)
end

parkingspots = [{spot_type: 'handicap', status: 'open'}, {spot_type: 'handicap', status: 'taken', occupying: '1'}, 
	{spot_type: 'handicap', status: 'reserved', occupying: '2'}, {spot_type: 'normal', status: 'open'},
	{spot_type: 'normal', status: 'taken', occupying: '3'}, {spot_type: 'normal', status: 'reserved', occupying: '4'},
	{spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'open'},
	{spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'open'},
	{spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'taken', occupying: '5'},
	{spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'taken', occupying: '6'},
	{spot_type: 'normal', status: 'reserved', occupying: '7'}, {spot_type: 'normal', status: 'taken', occupying: '8'},
	{spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'open'}
]
@mainlot = Parkinglot.find_by_id(1)
parkingspots.each do |spot|
	@mainlot.parkingspots.create!(spot)
end