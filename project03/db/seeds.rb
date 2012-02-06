# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
#Deleted everything, now it's time for some presets.
Product.create(title: 'Banana', 
description: %{<p>Bananas are the fastest growing fruit out there. If you need to get some, go to a store. </p>},
img_url: 'http://upload.wikimedia.org/wikipedia/commons/f/ff/Banana_and_cross_section.jpg',
price: 0.55)

#product two
Product.create(title: 'Pajamas',
description: %{<p> They're not really running anywhere. </p>},
img_url: 'http://www.gadgetmadness.com/archives/slanket.gif',
price: 50.50)
   
