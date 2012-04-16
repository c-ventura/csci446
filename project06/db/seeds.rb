# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
seed_params = [ {:username => 'administrator', :password => 'password', :password_confirmation => 'password', :role => 'admin'},
 {:username => 'member', :password => 'password', :password_confirmation => 'password', :role => 'member'},
 {:username => 'Joe', :password => 'password', :password_confirmation => 'password', :role => 'member'}, 
{:username => 'Joey', :password => 'password', :password_confirmation => 'password', :role => 'member'},
 {:username => 'Phil', :password => 'password', :password_confirmation => 'password', :role => 'member'},
{:username => 'SuperJoe', :password => 'password', :password_confirmation => 'password', :role => 'admin'}, 
]

seed_params.each do |attributes|
   User.create!(attributes)
end