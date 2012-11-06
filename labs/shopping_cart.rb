require 'pry'

#hashes
prices = {:shoes => 80.33, :shirts => 25.67, :socks => 7.99} 
cart = {:shoes => 0, :shirts => 0, :socks => 0}

#key variables
tax = 0.0931
subtotal = 0

puts "Welcome to the store!"
puts prices
puts "What do you want to buy? ('shoes', 'shirts', 'socks', or 'checkout')"
input = gets.chomp


#loop where you add items to cart and add costs to subtotal
while input != 'checkout'

	puts "How many #{input} would you like to buy?"
	how_many = gets.chomp.to_i

	input = input.to_sym

	#adds number of items to cart
	cart[input] = cart[input] + how_many

	#gets the total cost for items
	cost = prices[input] * how_many
	subtotal = subtotal + cost

	#repeat question
	puts "What do you want to buy? ('shoes', 'shirts', 'socks', or 'checkout')"
	input = gets.chomp

end

#calc tax
tax_amount = subtotal * tax

#calc grand total
grand_total = subtotal + tax_amount

#print receipt
puts "Receipt"
puts "#{cart[:shoes]} shoes = #{cart[:shoes] * prices[:shoes]}"
puts "#{cart[:shirts]} shirts = #{cart[:shirts] * prices[:shirts]}"
puts "#{cart[:socks]} socks = #{cart[:socks] * prices[:socks]}"
puts "Subtotal = #{"%.2f" % subtotal}"
puts "Tax at 9.31% = #{"%.2f" % tax_amount}"
puts "Grand total = #{ "%.2f" % grand_total}"


