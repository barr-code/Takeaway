class LineItem

	attr_accessor :dish, :quantity
	
	def initialize(dish, quantity = 1)
		@dish = dish
		@quantity = quantity
	end

	def line_total
		dish.price * quantity
	end
end