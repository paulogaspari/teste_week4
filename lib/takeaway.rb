require_relative 'order'
class Takeaway

	def initialize(menu, order_clazz = Order)
		@menu = menu
		@order_clazz = order_clazz
	end


	def list_dishes
		@menu.list_dishes.map {|dish| "#{dish.name} - #{dish.price}"}
	end

	def place(order)
		order.place
	end

	def order
		@order_clazz.new
	end

	def place(order)
		order.place
	end

end
