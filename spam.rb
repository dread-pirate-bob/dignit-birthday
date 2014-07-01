require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'



def greetPerson(name)
	if name == "Jim"
		return "Hello #{name}"
	elsif name == "Nick"
		return "Go away #{name}"
	else
		return "Hello #{name}, it's nice to meet you!"
	end
end

def wishHappyBirthday(age)
	if age == 0
		return "You were born!"
	elsif age == 1
		return "Happy #{age}st Birthday!"
	elsif age == 2
		return "Happy #{age}nd Birthday!"
	elsif age == 3
		return "Happy #{age}rd Birthday!"
	else
		return "Happy #{age}th Birthday!"
	end
end

def sendText(to, message)

	# put your own credentials here
	account_sid = ''
	auth_token = ''

	# set up a client to talk to the Twilio REST API
	@client = Twilio::REST::Client.new account_sid, auth_token

	@client.account.messages.create(
	  :from => "+1",
	  :to => to,
	  :body => message
	)

end

puts "how many friends?"
numberOfFriends = gets.to_i

numberOfFriends.times do |i|

	puts "What's your friend's name?"
	name = gets.strip!
	puts greetPerson(name)


	puts "How old are you?"
	age = gets.to_i
	puts "Happy #{age}th Birthday!"

	puts "What's your friend's phone number?"
	phoneNumber = "+1#{gets.to_i}"

	sendText(phoneNumber, wishHappyBirthday(age))

end
