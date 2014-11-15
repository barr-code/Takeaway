require 'takeaway'

describe Takeaway do

	let(:order) {double :order, :class => :order}
	let(:dish) {double :dish}
	let(:sender_double) {double :sender_double}
	
	let(:takeaway) {Takeaway.new('Victoria', '+13026486656', sender_double)}


	it "should take the customer's name" do
		expect(takeaway.customer).to eq('Victoria')
	end

	it "should know the customer's phone number" do
		expect(takeaway.customer_number).to eq('+13026486656')
	end

	it "should take the customer's order" do
		expect(takeaway.customer_order(order).class).to be(Order)
	end

	it "should have a confirmation message for successful orders" do 
		expect(takeaway.confirmation).to be_a String
	end

	it "should send the confirmation message as a text via Twilio" do
		expect(sender_double).to receive(:send_sms)
		takeaway.send_confirmation
	end
end