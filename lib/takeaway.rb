require './lib/text_message_sender.rb'

class Takeaway

	attr_accessor :customer, :customer_number, :order

	def initialize(customer, customer_number, message_sender = TextMessageSender.new )
		@customer = customer
		@customer_number = customer_number
		@message_sender = message_sender
	end

	def customer_order(order)
		@order = Order.new
	end

	def send_confirmation
		@message_sender.send_sms(confirmation,customer_number)
	end

	def confirmation
		return "Alright, #{customer}. We've received your order.
		You'll get your food at #{delivery_time}. So hold your horses."
	end

	def delivery_time
		(Time.now + 3600).strftime("%H:%M")
	end

end