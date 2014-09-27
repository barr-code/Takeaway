class Menu

	attr_accessor :dishes

	def initialize
		@dishes = []
	end

	def add_dish(dish)
		@dishes << dish
	end

	def has_dishes?
		@dishes.any? == true
	end

	def item_count
		@dishes.count
	end

	def display_menu
		@dishes
	end

end