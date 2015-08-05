# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
EndUser.delete_all
if EndUser.count == 0
  EndUser.create!(
    email: "example@balladtrail.com",
    password: "password",
    password_confirmation: "password")
end

# Drops table data so that each 'rake db:seed' does not add duplicate information
Place.delete_all

# Creates rows for Places table
end_user = EndUser.find(1) 
places = end_user.places.create([
	{ name: 'Bennachie', latitude: 57.291939, longitude: -2.565474, region: 'Inverurie', image: 'http://farm6.staticflickr.com/5304/5660095951_aee1a8de61.jpg' }, 
	{ name: 'Harlaw', latitude: 57.307924, longitude: -2.413533, region: 'Inverurie', image: 'http://s0.geograph.org.uk/geophotos/02/96/15/2961549_3616b723.jpg' },
  { name: 'Inverurie', latitude: 57.28, longitude: -2.38, region: 'Aberdeenshire', image: 'http://s0.geograph.org.uk/photos/41/37/413729_45bc2486.jpg' },
  { name: 'Dunnideer', latitude: 57.3422707, longitude: -2.714708, region: 'Aberdeenshire', image: 'http://www.donaldfordimages.com/gallery/ProdImages/Donside035-001.JPG' }
	])

Composer.delete_all
end_user = EndUser.find(1)
composers = end_user.composers.create([
  { fname: 'Charles', lname: 'Murray', category: 'Poet', bio: 'Charles Murray (27 September 1864 – 12 April 1941) was a poet who wrote in the Doric dialect of Scots. He was one of three rural poets from the northeast, the others being Flora Garry and John C. Milne, who did much to validate the literary use of the Doric dialect of Scots. Read more-[https://en.wikipedia.org/wiki/Charles_Murray_(poet)]' },
  { fname: 'Jock', lname: 'Duncan', category: 'Singer', bio: 'Jock Duncan is a national treasure twice over. As a singer of the muckle sangs and bothy ballads of his native Aberdeenshire, Jock is a tradition bearer of great authority. Moreover, he is the patriarch of a family that has made an immense contribution to the Scottish musical tradition. Read more[http://projects.handsupfortrad.scot/hall-of-fame/jock-duncan/]' },
  { fname: 'Stanley', lname: 'Robertson', category: 'Poet', bio: 'Stanley Robertson (8 June 1940 – 2 August 2009) was a Scottish storyteller and ballad singer. He was born in Aberdeen, Aberdeenshire in 1940 into a traveller family which had settled there. His family background was rich in tradition, and from his aunt, folk singer Jeannie Robertson, he inherited a huge repertoire of north east ballads. He was the keyworker for the Heritage Lottery funded "Oral and Cultural Traditions of Scottish Travellers" project, from April 2002 until April 2005. Read more-[https://en.wikipedia.org/wiki/Stanley_Robertson_(folk_singer)]' },
  { fname: 'Jeannie', lname: 'Robertson', category: 'Singer', bio: 'Jeannie Robertson is a monumental figure in Scottish traditional song whose influence and importance as a preserver of folklore will sustain for as long as traditional ballads are sung. Regina Christina Robertson was born into a traveller family in Aberdeen on October 21, 1908. Her father, Donald, who died a year later, was a piper and her mother, Maria, was a singer with a vast store of songs and stories. Read more - [http://projects.handsupfortrad.scot/hall-of-fame/jeannie-robertson-mbe/]' },  
  ])

Admin.delete_all
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