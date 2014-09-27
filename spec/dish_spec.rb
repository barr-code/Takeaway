require 'dish'

describe Dish do
	
	it "should have a settable name" do
		samosa = Dish.new('samosa', 2.00)
		expect(samosa.name).to eq('samosa')
	end

	it "should have a price" do
		samosa = Dish.new('samosa', 2.00)
		expect(samosa.price).to eq(2)
	end
end