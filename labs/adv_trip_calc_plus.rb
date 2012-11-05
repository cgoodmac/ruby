require "pry"

puts "How far they are going (miles)?"
distance = gets.to_f

puts "How fast they are going? mph"
speed = gets.to_f

puts "How much is gas per gallon starting?"
ppg = gets.to_f

puts "How much is gas per gallon ending?"
ppg_end = gets.to_f

puts "What is the MPG of their car?"
mpg = gets.to_f

puts "How much money they have?"
cash = gets.to_f

# can also use this more standard loop
# begin loop
# while ppg <= ppg_end 

	#increment ppg
	#ppg = ppg + 0.1

(ppg..ppg_end).step(0.10).each do |ppg|

	#calculate cost of the trip based on new ppg
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

	#print results based on array, or return "sorry" if there are no
	if results
		puts "With gas at $#{"%0.02f" % ppg} per gallon, you will have $#{"%0.02f" % results[0]} when you arrive in #{"%0.02f" % results[1]} hours."
	else
		puts "Sorry, you do not have enough money for the trip."
	end

end