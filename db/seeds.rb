# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

include FactoryGirl::Syntax::Methods

group = create_list(:group_with_orders, 3)

restaurant = create_list(:restaurant_with_meals, 5)

purchaser = group[0].orders[0].purchasers.create(user: group[0].users[0])
restaurant = group[0].orders[0].restaurant
meal1 = restaurant.meals[0]
meal2 = restaurant.meals[1]

purchaser.meals_lists.create([{meal: meal1, amount: 20},{meal: meal2, amount: 10}])
