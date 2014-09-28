require 'takeaway'

describe Takeaway do

	let(:takeaway) {Takeaway.new('Adam')}
	let(:order) {double :order, :class => :order}
	let(:dish) {double :dish}

	it "should take the customer's name" do
		expect(takeaway.customer).to eq('Adam')
	end

	it "should take the customer's order" do
		expect(takeaway.customer_order(order).class).to be(Order)
	end
end