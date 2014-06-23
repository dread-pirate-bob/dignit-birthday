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
		puts "Happy Birthday #:#{years}!"
	end
end

puts "What's your name?"
name = gets.strip!
puts greetPerson(name)


puts "How old are you?"
age = gets.to_i
puts "Happy #{age}th Birthday!"
wishHappyBirthday(age)

