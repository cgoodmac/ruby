require 'pry'

n_train = ['times square', '34th', '28th','23rd','union square']
l_train = ['8th', '6th', 'union square','3rd','1st']
six_train = ['grand central', '33rd', '28th','23rd','union square']

puts "N train stops #{n_train}"
puts "L train stops #{l_train}"
puts "6 train stops #{six_train}"

puts "What train are you on (n,l,6)?"
train_start = gets.chomp

puts "What stop are you getting on?"
station_start = gets.chomp

puts "What train are you getting off at (n,l,6)?"
train_end = gets.chomp

puts "What stop are you getting off at?"
station_end = gets.chomp

if train_start == "n"
	train_start = n_train
	station_start = n_train.index(station_start)

elsif train_start == "l"
	train_start = l_train
	station_start = l_train.index(station_start)

elsif train_start == "6"
	train_start = six_train
	station_start = six_train.index(station_start)
end

if train_end == "n"
	train_end = n_train
	station_end = n_train.index(station_end)

elsif train_end == "l"
	train_end = l_train
	station_end = l_train.index(station_end)

elsif train_end == "6"
	train_end = six_train
	station_end = six_train.index(station_end)

end

intersect = n_train & l_train & six_train
intersect = intersect.join('')

if train_start != train_end
	number_of_stops1 = (train_start.index(intersect) - station_start).abs
	number_of_stops2 = (station_end - train_end.index(intersect)).abs
	total_number_of_stops = number_of_stops1 + number_of_stops2

	puts "Switch at #{intersect}, get off in #{total_number_of_stops} total stops"

else
	number_of_stops = station_end - station_start

	puts "Get off in #{number_of_stops} stops"
end
