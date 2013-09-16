require './lib/takeaway'
require './lib/order'
require './lib/menu'
require './lib/dish'
require './lib/line_item'
require './lib/twillio_order'
require './lib/twillio_wrapper'

takeaway = Takeaway.new(Menu.new([Dish.new('Burger', 5), Dish.new('Pizza',10), Dish.new('Sushi', 20), Dish.new('Beef', 15)]))
order = TwillioOrder.new
takeaway.order
order.add(Dish.new('Burger', 5))
order.place