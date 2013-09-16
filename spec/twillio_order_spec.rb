require 'twillio_order'

describe TwillioOrder do

let(:order){TwillioOrder.new}



	it 'has no items' do
		expect(order).to be_empty
	end

	it 'can add items' do
	order.add(:line_item)

	expect(order).not_to be_empty
	end

	it 'calculates the total amount' do
		item = double :line_item, total_amount: 4.4
		order.add(item)

		expect(order.total_amount).to eq 4.4
	end

it 'cannot place an order' do
		order = Order.new
		expect{order.place}.to raise_error 'You need to order somwthing!'
	end

	it 'places an order' do
		time = (Time.new + (60*60)).strftime("%H:%M")
		message = "thank you! your order was successfully placed. It will be delivered #{time}"

		twillio_wrapper = double :twillio

		expect(twillio_wrapper).to receive(:send_sms).with(message).and_return(message)

		order = TwillioOrder.new(twillio_wrapper)
		order.add(:item)
		order.place
	end


	
end