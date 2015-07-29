# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Drops table data so that each 'rake db:seed' does not add duplicate information
Place.delete_all
 Creates rows for Places table

places = Place.create([
	{ name: 'Bennachie', latitude: 57.291939, longitude: -2.565474, region: 'Inverurie' }, 
	{ name: 'Harlaw', latitude: 57.307924, longitude: -2.413533, region: 'Inverurie' },
	])
	
if Admin.count == 0
Admin.create!(
             email: "mnikole9@gmail.com",
             password:              "password",
             password_confirmation: "password")
end
      
10.times do
  email = Faker::Internet.free_email
  password = "theballad"
  EndUser.create!(email: email,
             password:              password,
               password_confirmation: password)
end