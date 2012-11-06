n_train = ['times square', '34th', '28th','23rd','union square']
l_train = ['8th', '6th', 'union square','3rd','1st']
six_train = ['grand central', '33rd', '28th','23rd','union square']

puts "What train are you on (n,l,6)?"
train_select = gets.chomp

if train_select == "n"

	puts n_train
	puts "Where would you like to get ON?"
	start = gets.chomp
	puts "Where would you like to get OFF?"
	stop = gets.chomp

	number_of_stops = n_train.index(stop) - n_train.index(start)

	puts "Get off in #{number_of_stops} stops"

elsif train_select == "l"
	puts l_train
	puts "Where would you like to get ON?"
	start = gets.chomp
	puts "Where would you like to get OFF?"
	stop = gets.chomp

	number_of_stops = l_train.index(stop) - l_train.index(start)

	puts "Get off in #{number_of_stops} stops"

else

	puts six_train
	puts "Where would you like to get ON?"
	start = gets.chomp
	puts "Where would you like to get OFF?"
	stop = gets.chomp

	number_of_stops = six_train.index(stop) - six_train.index(start)

	puts "Get off in #{number_of_stops} stops"



end
