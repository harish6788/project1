# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :name => 'Harish Ramesh', :email => 'harish@ga.co', :password => 'chicken', :admin => true
u2 = User.create :name => 'Briyney Spears', :email => 'britney@ga.co', :password => 'chicken'
puts "#{ User.count } users created"

List.destroy_all
l1 = List.create :to => 'Sell', :title => 'Apple iphone', :description => 'Near new phone for sale'
puts "#{ List.count } lists created"

Category.destroy_all
c1 = Category.create :name => 'Antiques & Art'
c2 = Category.create :name => 'Baby & Children'
c3 = Category.create :name => 'Books,Musics or Games'
c4 = Category.create :name => 'Cars & Vehicles'
c5 = Category.create :name => 'Clothing & Fashion'
c6 = Category.create :name => 'Electronics'
c7 = Category.create :name => 'Home & Garden'
c8 = Category.create :name => 'Miscellaneous'
c9 = Category.create :name => 'Real estate'
c10 = Category.create :name => 'Sports'
c11 = Category.create :name => 'Other'
puts "#{ Category.count } categories created"

# Associations ################
puts "user and list"
u1.lists << l1

puts "category and list"
c1.lists << l1

puts "user and category"
u1.categories << c1
