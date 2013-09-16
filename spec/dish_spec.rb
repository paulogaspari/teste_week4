require 'dish'

describe Dish do

	it 'has a name' do
		dish = Dish.new('Bufalo burger')

		expect(dish.name).to eq 'Bufalo burger'
	end

	it 'has a price' do
		dish = Dish.new 'Soup',2.34
		expect(dish.price).to eq 2.34
	end
	
end
