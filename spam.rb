def greetPerson(name)
	if name == "Jim"
		return "Hello #{name}"
	elsif name == "Nick"
		return "Go away #{name}"
	else
		return "Hello #{name}, it's nice to meet you!"
	end
end

puts "What's your name?"
name = gets.strip!
puts greetPerson(name)


puts "How old are you?"
age = gets.to_i
puts "Happy #{age}th Birthday!"

