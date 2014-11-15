require 'twilio-ruby'

class TextMessageSender

	def send_sms(confirmation, customer_number)
		account_sid = "AC8f15b1dc77a1ae66f0c4131c787ab04f"
		auth_token = "23d8cabf14a1f5b4d7206efb5914e862"
	    @client = Twilio::REST::Client.new account_sid, auth_token
    	@client.account.messages.create({
        :body => confirmation,
        :from => '+13023216063',
        :to => customer_number,
        })
	end
end