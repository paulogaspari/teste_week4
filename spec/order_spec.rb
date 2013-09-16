require 'order'
require 'dish'
require 'line_item'


describe Order do


	it 'has no items' do
		expect(Order.new).to be_empty
	end

	it 'can add items' do
	order = Order.new
	order.add(:line_item)

	expect(order).not_to be_empty
	end

	it 'calculates the total amount' do
		item = double :line_item, total_amount: 4.4
		order = Order.new
		order.add(item)

		expect(order.total_amount).to eq 4.4
	end

	it 'cannot place an order' do
		order = Order.new
		expect{order.place}.to raise_error 'You need to order somwthing!'
	end

	it 'places an order' do
		order = Order.new
		time = (Time.new + (60*60)).strftime("%H:%M")
		order.add(:item)
		expect(order.place).to eq "thank you! your order was successfully placed. It will be delivered #{time}"
	end

end