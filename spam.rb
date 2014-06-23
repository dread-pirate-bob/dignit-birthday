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

puts "What's your name?"
name = gets.strip!
puts greetPerson(name)


puts "How old are you?"
age = gets.to_i
puts "Happy #{age}th Birthday!"
wishHappyBirthday(age)

