class Menu

	attr_accessor :dishes

	def initialize
		@dishes = []
	end

	def add_dish(dish)
		@dishes << dish
	end

	def display_menu
		@dishes
	end

end