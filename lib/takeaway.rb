require './lib/sms.rb'

class Takeaway

	attr_accessor :customer, :order

	def initialize(customer)
		@customer = customer
	end

	def customer_order(order)
		@order = Order.new
	end

	def send_message
		message = Message.new(confirmation).send_sms
	end

	def confirmation
		return "Alright, #{customer}. We've received your order.
		You'll get your food at #{delivery_time}. So hold your horses."
	end

	def delivery_time
		(Time.now + 3600).strftime("%H:%M")
	end

end