# [] are an array

# {} hashes

# Colons = symbols :hello instead of "hello"
	# SYMBOLS only uses memory once

#strings consume way more memory than symbols

#keys	1		2		3
#colors	[blue,	green,	yellow]

#KEYS	:one 	:two	:three		
#colors	{blue,	green,	yellow}

#searching in arrays is horrible
#most of the time use keys in arrays, but don't have to

#0(n) is array searching

#0(1) searching a hash is 0(1) FASTER than searching array you give it a key

# you only use symbols for keys, use strings for anything normally string-like
# use something very unique for keys
require 'pry'

colors = ['blue', 'green', 'yellow']

puts "Enter a new color:"
color = gets.chomp
colors << color

person = {}
puts "Last name?"
person[:last] = gets.chomp
puts "First name?"
person[:first] = gets.chomp
puts "Age?"
person[:age] = gets.chomp

colors.each do |color|
	puts "The color is #{color}"
end

(1..1000).each do |x|
	puts "the square of the number is #{x * x}"
end	

person.each do |key, value|
	puts "the key is #{key} and value is #{value}"
end

binding.pry