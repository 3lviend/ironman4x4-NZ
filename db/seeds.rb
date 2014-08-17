# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#load 'db/seeds/01_users.rb'
#load 'db/seeds/a_vehicles.rb'
#load 'db/seeds/b_categories.rb'
#load 'db/seeds/c_accessory_products.rb'
#load 'db/seeds/d_suspension_products.rb'

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Ironman extension
Refinery::Ironman::Engine.load_seed

# Added by Refinery CMS Search engine
Refinery::Search::Engine.load_seed

Refinery::Setting.set(:time_zone, 'Melbourne')
Refinery::Setting.set(:datetime_format, '%d/%m/%Y %H:%M')
Refinery::Setting.set(:date_format, '%d/%m/%Y')
