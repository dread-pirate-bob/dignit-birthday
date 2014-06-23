puts "What's your name?"
name = gets.strip!

if name == "Jim"
	puts "Hello #{name}"
elsif name == "Nick"
	puts "Go away #{name}"
else
	puts "Hello #{name}, it's nice to meet you!"
end