puts "What's your name?"
name = gets.strip!
greetPerson(name)

def greetPerson (name)
	if name == "Jim"
		puts "Hello #{name}"
	elsif name == "Nick"
		puts "Go away #{name}"
	else
		puts "Hello #{name}, it's nice to meet you!"
	end
end