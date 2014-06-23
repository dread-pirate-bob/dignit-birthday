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

def wishHappyBirthday(birthdays)
	for years in 0..birthdays
		if years == 0
			puts "You were born!"
		elsif years == 1
			puts "Happy #{years}st Birthday!"
		elsif years == 2
			puts "Happy #{years}nd Birthday!"
		elsif years == 3
			puts "Happy #{years}rd Birthday!"
		else
			puts "Happy #{years}th Birthday!"
		end
	end
	# What's wrong with this?
end

def sendText(to, from, message)

	# put your own credentials here
	account_sid = 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
	auth_token = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'

	# set up a client to talk to the Twilio REST API
	@client = Twilio::REST::Client.new account_sid, auth_token

	@client.account.messages.create(
	  :from => from,
	  :to => to,
	  :body => message
	)

end

puts "What's your name?"
name = gets.strip!
puts greetPerson(name)


puts "How old are you?"
age = gets.to_i
puts "Happy #{age}th Birthday!"
wishHappyBirthday(age)

