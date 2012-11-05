require 'pry'

puts "Do you want to calculate your mortgage payments (y/n)?"
response = gets.chomp

while response == "y"

	puts "Welcome to Mortgage Calculator!"

	#GET THE DATA

	#principal
	puts "Enter amount borrowed (the principal)"
	principal = gets.to_f

	#interest rate
	puts "Enter YEARLY interest rate as an integer ('6.5' and NOT '6.5%')"
	rateyear = gets.to_f

	#years to repay
	puts "Enter years to repay the loan"
	years = gets.to_f

	#CALCULATIONS

	#calculate monthly interest rate based on yearly interest rate
	ratemonth = (rateyear/12)/100 

	#calculate number of monthly payments to make based on number of years
	payments = years * 12 

	#calculates the actualy amount of each monthly payment
	monthlypayments = (principal * ratemonth) / (1 - (1 + ratemonth)**-payments)

	#rounds the amount down to two decimals
	monthlypayments = monthlypayments.round(2)

	#Outputs the result
	puts "Your monthly payments will be $#{monthlypayments}"

	puts "Do you want to calculate your mortgage payments (y/n)?"
	response = gets.chomp

end
