class Dish

	attr_accessor :name, :price

	def initialize(name = 'foods', price = 'monies')
		@name = name
		@price = price
	end
end