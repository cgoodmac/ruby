require 'pry'
require 'test/unit'
require 'yahoofinance'

load 'user.rb'

users = [] # turn this into a hash
selected_user = nil
@logged_in_user = nil
@quote_type = YahooFinance::StandardQuote

def display_stocks

	puts `clear`

	(0..(@logged_in_user.stocks.length-1)).each do |i|

		stock = @logged_in_user.stocks[i][:symbol].to_s
		shares = @logged_in_user.stocks[i][:shares]
		purchase_price = @logged_in_user.stocks[i][:purchase_price]

		selected_stock = YahooFinance::get_quotes( @quote_type, stock )

		puts "Stock: #{selected_stock[stock].symbol}" 
		puts "Current Price: #{selected_stock[stock].lastTrade}"
		puts "Change: #{selected_stock[stock].change}"
		puts "Number of shares owned: #{shares}"
		puts "Purchase price: #{purchase_price}"
		puts "--"
	
	end

	sleep 3

	display_stocks
end	


def purchase_stock

	puts "Successful login!"

	puts "Buy (s)tocks or (q)uit?"
	response = gets.chomp

	while response != 'q'
		puts "You are purchasing stock, #{@logged_in_user.name}"
		puts "Cash available: #{@logged_in_user.cash}"
		puts "--"
		puts "Enter stock symbol"
		stock = gets.chomp.upcase
		selected_stock = YahooFinance::get_quotes( @quote_type, stock )

		puts "#{selected_stock[stock].symbol} Current Price: #{selected_stock[stock].lastTrade}"
		puts "How many shares would you like to buy?"
		shares = gets.chomp.to_i

		cost = shares * selected_stock[stock].lastTrade

		if cost <= @logged_in_user.cash
			puts "Total cost = #{cost}"
			puts "Purchase approved!"
		end	

		@logged_in_user.cash = @logged_in_user.cash - cost

		stock_hash = {:symbol => stock, :shares => shares, :purchase_price => selected_stock[stock].lastTrade }

		@logged_in_user.stocks << stock_hash

		puts "You own: #{@logged_in_user.stocks}"
		puts "Cash balance: #{@logged_in_user.cash}"

		puts "Buy (s)tocks or (q)uit?"
		response = gets.chomp

	end	

	display_stocks

end	

puts "(c)reate user or (l)ogin or (q)uit?"
response = gets.chomp

while response != 'q'

	if response == 'c'

		puts "What is your username?"
		name = gets.chomp

		puts "What do you want for a password?"
		pw = gets.chomp

		puts "How much cash do you have?"
		cash = gets.chomp.to_i

		u1 = User.new(name,pw,cash)
		users << u1

		puts "User created!"
		puts "Here are the users: #{users}"

	elsif response == 'l'	

		puts "Here are the users: #{users}"
		puts "Which user do you want to login as?"
		name = gets.chomp

		(0..(users.length-1)).each do |i|
			if users[i].name == name
				selected_user = users[i]
			else
				puts "User not found"
			end
		end

		puts "What is the password for #{selected_user}?"
		pw = gets.chomp

		if pw == selected_user.pw
			@logged_in_user = selected_user
			puts `clear`
			purchase_stock
		else
		end
	
	end

	puts "(c)reate user or (l)ogin or (q)uit?"
	response = gets.chomp

end



binding.pry
