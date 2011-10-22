# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#
User.create(email: "admin@admin.com", password: "admin", name: "Admin", last_name: "Admin", salt: "$2a$10$La0FyNgrCV4sBqQ95X8a3e")
