def purchase_stock

	puts "Successful login!"

	puts "Buy (s)tocks or (q)uit?"
	response = gets.chomp

	while response != 'q' #

		puts "You are purchasing stock, #{@logged_in_user.name}"
		puts "Cash available: #{@logged_in_user.cash}"
		puts "--"
		puts "Enter stock symbol"
		stock = gets.chomp.upcase #gets the stock symbol, converts it to uppercase
		selected_stock = YahooFinance::get_quotes( @quote_type, stock )

		puts "#{selected_stock[stock].symbol} Current Price: #{selected_stock[stock].lastTrade}"
		puts "How many shares would you like to buy?"
		shares = gets.chomp.to_i

		cost = shares * selected_stock[stock].lastTrade # multiplies the price of the stock times the number of shares desired to get the total cost

		while cost > @logged_in_user.cash # this keeps looping while the cost is more than the cash the user has

			puts "You don't have enough cash!"
			puts "#{selected_stock[stock].symbol} Current Price: #{selected_stock[stock].lastTrade}"
			puts "How many shares would you like to buy?"
			shares = gets.chomp.to_i
			cost = shares * selected_stock[stock].lastTrade

		end

		puts "Total cost = #{cost}" # if cost < or = cash user has, then purchase is approved
		puts "Purchase approved!"

		@logged_in_user.cash = @logged_in_user.cash - cost # the cost is then deducted from user's cash on hand

		stock_hash = {:symbol => stock, :shares => shares, :purchase_price => selected_stock[stock].lastTrade } # this creates a hash for the trade

		@logged_in_user.stocks << stock_hash # the hash gets pushed to the array of stocks the user has

		puts "You own: #{@logged_in_user.stocks}"
		puts "Cash balance: #{@logged_in_user.cash}"

		puts "Buy (s)tocks or (q)uit?"
		response = gets.chomp

	end	

	display_stocks

end	