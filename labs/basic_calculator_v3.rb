require 'pry'

puts "Do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower, (r)oot, or (q)uit?"
response = gets.chomp

while response != "q"

	puts "First number"
	first = gets.to_f

	puts "Second number"
	second = gets.to_f

	if response == "a" #add
		result = first + second
	elsif response == "s" #subtract
		result = first - second
	elsif response == "m" #multiply
		result = first * second
	elsif response == "d" #divide
		result = first / second
	elsif response == "p" #power
		result = first ** second
	elsif response == "r" #root
		result = Math.sqrt(first)
	end

	puts "The result is #{result}"
	puts "Do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower, (r)oot, or (q)uit?"
	response = gets.chomp

end