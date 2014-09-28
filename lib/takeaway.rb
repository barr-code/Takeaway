class Takeaway

	attr_accessor :customer, :order

	def initialize(customer)
		@customer = customer
	end

	def customer_order(order)
		@order = Order.new
	end

end