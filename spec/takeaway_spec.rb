require 'takeaway'

describe Takeaway do

	it 'lists the dishes' do
		menu = double :menu
		takeaway = Takeaway.new(menu)
		expect(menu).to receive(:list_dishes).and_return([])
		takeaway.list_dishes	
	end

	it 'creates a new order' do
		takeaway = Takeaway.new(:menu)
		expect(takeaway.order).to be_instance_of Order
	end

	it 'places an order' do
		order = double :order
		expect(order).to receive(:place)

		takeaway = Takeaway.new(:menu)
		takeaway.place(order)
	end
	
end