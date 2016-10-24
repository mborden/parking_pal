# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

parkinglots = [{name: 'Main Lot', width: '10'}]
# create lots
parkinglots.each do |lot|
	Parkinglot.create!(lot)
end

parkingspots = [{parkinglot_id: '1', spot_type: 'handicap', status: 'open'}, {parkinglot_id: '1', spot_type: 'handicap', status: 'taken', occupying: '1'}, 
	{parkinglot_id: '1', spot_type: 'handicap', status: 'reserved', occupying: '2'}, {parkinglot_id: '1', spot_type: 'normal', status: 'open'},
	{parkinglot_id: '1', spot_type: 'normal', status: 'taken', occupying: '3'}, {parkinglot_id: '1', spot_type: 'normal', status: 'reserved', occupying: '4'},
	{parkinglot_id: '1', spot_type: 'normal', status: 'open'}, {parkinglot_id: '1', spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'open'},
	{parkinglot_id: '1', spot_type: 'normal', status: 'open'}, {parkinglot_id: '1', spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'open'},
	{parkinglot_id: '1', spot_type: 'normal', status: 'open'}, {parkinglot_id: '1', spot_type: 'normal', status: 'taken', occupying: '5'},
	{parkinglot_id: '1', spot_type: 'normal', status: 'open'}, {parkinglot_id: '1', spot_type: 'normal', status: 'taken', occupying: '6'},
	{parkinglot_id: '1', spot_type: 'normal', status: 'reserved', occupying: '7'}, {parkinglot_id: '1', spot_type: 'normal', status: 'taken', occupying: '8'},
	{parkinglot_id: '1', spot_type: 'normal', status: 'open'}, {parkinglot_id: '1', spot_type: 'normal', status: 'open'}, {spot_type: 'normal', status: 'open'}
]

users = [{
		email: "email@email.com",
		password: "password",
		name: "Mike Spaceman",
		LPN: "111 xxx" 
	},
	{
		email: "email1@email.com",
		password: "password1",
		name: "Tracey Mule",
		LPN: "123 jjj"
	},

	{
		email: "email2@email.com",
		password: "password2",
		name: "Jordan Daniels",
		LPN: "222 bbb"
	},
	{
		email: "email3@email.com",
		password: "password3",
		name: "Tina Toya",
		LPN: "000 nnn"
		},
	{
		email: "email4@email.com",
		password: "password4",
		name: "Billy Bob",
		LPN: "345 cxc"

	},
	{
		email: "email5@email.com",
		password: "password5",
		name: "Joe Schmo",
		LPN: "sss 852"
	},
	{
		email: "email6@email.com",
		password: "password6",
		name: "Johnny Boy",
		LPN: "H20 111"
	},
	{
		email: "email7@email.com",
		password: "password7",
		name: "Liz Lemon",
		LPN: "lol 666"
	},
	{
		email: "email8@email.com",
		password: "password8",
		name: "Chris Columbus",
		LPN: "cvb 888"
	},
	{
		email: "email9@email.com",
		password: "password9",
		name: "Peyton Manning",
		LPN: "foo 888"
	},
	{
		email: "email10@email.com",
		password: "password10",
		name: "Jane Doe",
		LPN: "xxx 678"
	},
	{
		email: "email11@email.com",
		password: "password11",
		name: "Sassy Tee",
		LPN: "ghy 647"
	},
	{
		email: "email12@email.com",
		password: "password12",
		name: "Mallory Turner",
		LPN: "cvs 987"
	},
	{
		email: "email13@email.com",
		password: "password13",
		name: "Connie Smith",
		LPN: "nmy 944"
	},
	{
		email: "email14@email.com",
		password: "password14",
		name: "Vicky Lee",
		LPN: "mop 222"
	}]

@mainlot = Parkinglot.find(1)
# create spots
parkingspots.each do |spot|
	Parkingspot.create!(spot)
end
# populate into main lot
parkingspots.each do |spot|
	@mainlot.parkingspots.create!(spot)
end
# create users
users.each do |user|
	User.create!(user)
end
