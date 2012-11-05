require "pry"

puts "How far they are going (miles)?"
distance = gets.to_f

puts "How fast they are going? mph"
speed = gets.to_f

puts "How much is gas per gallon?"
ppg = gets.to_f

puts "What is the MPG of their car?"
mpg = gets.to_f

puts "How much money they have?"
cash = gets.to_f

amount = ppg / mpg * distance;

def trip_calculator(distance, cash, ppg, mpg, speed, amount)

	if amount <= cash
		money_remaining = cash - amount
		time_it_takes_to_complete_trip = distance/speed
		[money_remaining, time_it_takes_to_complete_trip]
	else
		nil
	end

end

results = trip_calculator(distance, cash, ppg, mpg, speed, amount)

if results
	puts "You will have $#{"%0.02f" % results[0]} when you arrive in #{"%0.02f" % results[1]} hours."
else
	puts "Sorry, you do not have enough money for the trip."
end