class Order

	attr_accessor :line_items, :order_total

	def initialize
		@line_items = []
		@order_total = 0
	end

	def add_line_item(line_item)
		@line_items << line_item
	end

	def grand_total
		@line_items.each do |item|
			@order_total += item.line_total
		end
		@order_total
	end
end