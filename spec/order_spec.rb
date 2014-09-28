require 'order'

describe Order do 

	let(:order) {Order.new}

	it "should have a list of line items" do
		expect(order.line_items.class).to eq(Array)
	end

end