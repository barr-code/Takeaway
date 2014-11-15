require 'line_item'

describe LineItem do

	let(:dish) {double :dish, :class => :dish, :price => 3.0}
	let(:lineitem) {LineItem.new(dish)}
	
	it "should know which dishes are on a line" do
		expect(lineitem.dish.class).to eq(:dish)
	end

	it "should have a default quantity of 1" do
		expect(lineitem.quantity).to eq(1)
	end

	it "can accept multiples of one dish on a line" do
		burgers = LineItem.new(dish, 7)
		expect(burgers.quantity).to eq(7)
	end


	it "should calculate a line total" do
		pizza = LineItem.new(dish, 5)
		expect(pizza.line_total).to eq(15)
	end
	
end