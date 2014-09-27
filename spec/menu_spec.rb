require 'menu.rb'

describe Menu do 

	let(:menu) {Menu.new}
	let(:dish) {double :dish}

	it "should have an array of dishes" do
		expect(menu.dishes).to eq([])
	end

	it "should be able to add new dishes" do
		menu.add_dish(dish)
		expect(menu).to have_dishes
	end

	it "should know how many dishes it has" do
		5.times {menu.add_dish(dish)}
		expect(menu.item_count).to eq(5)
	end

	it "should display a list of dishes" do
		expect(menu.display_menu).to eq([])
	end
end
