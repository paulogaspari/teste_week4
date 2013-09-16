require_relative 'twillio_wrapper'

class TwillioOrder


	def initialize(twillio_wrapper = TwillioWrapper.new)
		@order = Order.new
		@twillio = twillio_wrapper
	end

	def empty?
		@order.empty?
	end

	def add(item)
		@order.add(item)
	end

	def total_amount
		@order.total_amount
	end

	def place
		@twillio.send_sms(@order.place)
	end

end
