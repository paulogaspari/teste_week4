class Order

	def initialize
		@items = []
	end


	def add(item)
		@items << item

	end

	def empty?
		@items.empty?
	end

	def total_amount
		@items.inject(0) {|memo, item| memo + item.total_amount }
	end

	def place
		raise "You need to order somwthing!" if empty?
		"thank you! your order was successfully placed. It will be delivered #{one_hour_from_now}"
	end

	def one_hour_from_now
		(Time.new + (60*60)).strftime("%H:%M")
	end




end