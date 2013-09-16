require 'line_item'

describe LineItem do

	it 'calculates the total amount' do
		dish = double :dish, price: 2.2
		item = LineItem.new(dish, 1)
		expect(item.total_amount).to eq 2.2
	end


	it 'calculates the total amount with multiple quantities' do 
		dish = double :dish, price: 2.2
		item = LineItem.new(dish, 2)

		expect(item.total_amount).to eq 4.4
	end

end