puts 'beginnig'

p1 = Pizza.create(name: 'Cheese', ingredients: 'Dough, Tomato Sauce, Cheese')
p2 = Pizza.create(name:  'Pepperoni', ingredients: 'Dough, Tomato Sauce, Cheese, Pepperoni')
p3 = Pizza.create(name: 'Meat', ingredients: 'savory sausage, real beef, hickory-smoked bacon, julienne-cut Canadian bacon')
p4 = Pizza.create(name: 'Buffalo', ingredients: 'Shredded chicken, spicy buffalo sauce, blue cheese crumbles,cilantro')

r1 = Restaurant.create(name:'Sottocasa NYC', address:'298 Atlantic Ave, Brooklyn, NY 11201')
r2 = Restaurant.create(name:'PizzArte', address:'69 W 55th St, New York, NY 10019')
r3 = Restaurant.create(name:'Rubirosa', address:'235 Mulberry St, New York, NY 10012')
r4 = Restaurant.create(name:'Capizzi', address:'547 9th Ave, New York, NY 10018')


RestaurantPizza.create(price:25, pizza_id:1, restaurant_id:4)
RestaurantPizza.create(price:20, pizza_id:2, restaurant_id:3)
RestaurantPizza.create(price:30, pizza_id:3, restaurant_id:2)
RestaurantPizza.create(price:15, pizza_id:4, restaurant_id:1)
RestaurantPizza.create(price:10, pizza_id:1, restaurant_id:2)
RestaurantPizza.create(price:18, pizza_id:3, restaurant_id:4)
RestaurantPizza.create(price:27, pizza_id:2, restaurant_id:1)
RestaurantPizza.create(price:11, pizza_id:3, restaurant_id:1)
RestaurantPizza.create(price:12, pizza_id:2, restaurant_id:2)
RestaurantPizza.create(price:17, pizza_id:4, restaurant_id:3)


puts 'ending '
