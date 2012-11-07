require 'pry'

# create an array to store numbers in
numbers = []

puts "Add a (n)umber or (q)uit?"
prompt = gets.chomp

while prompt != 'q'

	# gets numbers, converts to integer, adds them to the array
	puts "What number do you want to add?"
	number = gets.chomp.to_i
	numbers << number

	# shows what's in the array
	puts "You added #{number}"
	puts "Here is your array: #{numbers}"

	puts "Add a (n)umber or (q)uit?"
	prompt = gets.chomp

end	

# shows the final original array
puts "Here is your original array: #{numbers}"

# defines the function square BEFORE you try to run it
def square(number)
	number * number
end

# squares is a map of the original array, running the function square on each number
squares = numbers.map {|number| square(number)}

puts "Here is your squared array: #{squares}"