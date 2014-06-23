puts "What's your name?"
name = gets.strip!
puts greetPerson(name)

def greetPerson (name)
	if name == "Jim"
		return "Hello #{name}"
	elsif name == "Nick"
		return "Go away #{name}"
	else
		return "Hello #{name}, it's nice to meet you!"
	end
end