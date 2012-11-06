require 'pry'

n = ['ts', '34th', '28th-n','23rd-n','us']
l = ['8th', '6th', 'us','3rd','1st']
s = ['gc', '33rd', '28th-s','23rd-s','us']

mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "What train do you want to ride: #{mta.keys.join(', ')}?" #the string interpolation here just displays the keys as a nice-looking string
start_train = gets.chomp.to_sym
puts "Which stop: #{mta[start_train].join(', ')}?" #the string interpolation here just displays the array of stops under that key as a nice-looking string
stop_a = gets.chomp

puts "What train do you want to get off: #{mta.keys.join(', ')}?" #the string interpolation here just displays the keys as a nice-looking string
stop_train = gets.chomp.to_sym
puts "Which stop: #{mta[stop_train].join(', ')}?" #the string interpolation here just displays the array of stops under that key as a nice-looking string
stop_b = gets.chomp

#gets the intersection of the two trains, returns it as a string (using "first", but you can also use "join" and a few others)
intersection = (mta[start_train] & mta[stop_train]).first

#this section runs the calcs
stop_a_index = mta[start_train].index(stop_a) 
stop_a_intersection_index = mta[start_train].index(intersection) 
trip_a_length = (stop_a_index - stop_a_intersection_index).abs

stop_b_index = mta[stop_train].index(stop_b) 
stop_b_intersection_index = mta[stop_train].index(intersection) 
trip_b_length = (stop_b_index - stop_b_intersection_index).abs

total_trip_length = trip_a_length + trip_b_length

puts "Switch at #{intersection}, get off in #{total_trip_length} total stops"

