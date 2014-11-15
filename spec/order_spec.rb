require 'order'

describe Order do 

	let(:order) {Order.new}
	let(:line_item) {double :line_item}

	it "should have a list of line items" do
		expect(order.line_items.class).to eq(Array)
	end

	it "should have a default order total of 0" do 
		expect(order.order_total).to eq(0)
	end

	it "should be able to add new line items to the list" do
		expect{order.add_line_item(line_item)}.to change{order.line_items.count}.by(1)
	end

	it "should generate a total price for the order" do
		line1 = double :line_item, :line_total => 10
		line2 = double :line_item, :line_total => 8
		order.add_line_item(line1)
		order.add_line_item(line2)
		expect(order.grand_total).to eq(18)
	end

end