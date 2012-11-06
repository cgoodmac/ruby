require 'pry'

#PART 1

total = 0

(250..180000).step(1).each do |x|
	total = total + x
end

puts "Total of sum of integers between 250 and 180,000 is #{total}"

#PART 2

colors = []

puts "Enter in a (c)olor or (q)uit"
input = gets.chomp

while input != 'q'

	puts "Enter in a color"
	color = gets.chomp
	colors.push(color)
	puts "Here is the current list of colors: #{colors}"

	puts "Enter in a (c)olor or (q)uit"
	input= gets.chomp
end

puts "Here is the final list of colors: #{colors}"