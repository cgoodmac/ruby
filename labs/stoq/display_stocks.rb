def display_stocks

	puts `clear`

	puts "Stocks Dashboard"
	puts "--"

	(0..(@logged_in_user.stocks.length-1)).each do |i| # looping through the array of stocks owned by the user
 
		stock = @logged_in_user.stocks[i][:symbol].to_s # value of this key is the ticker. This needs to be converted to a string, hence the to_s
		shares = @logged_in_user.stocks[i][:shares] # this gets the number of shares owned
		purchase_price = @logged_in_user.stocks[i][:purchase_price] # this is the purchase price for the stock
		amount_owned = shares * purchase_price # calculate the total amount owned for each stock

		selected_stock = YahooFinance::get_quotes( @quote_type, stock ) # get the latest info for each stock

		puts "Stock: #{selected_stock[stock].symbol}" 
		puts "Current Price: #{selected_stock[stock].lastTrade}"
		puts "Change: #{selected_stock[stock].change}"
		puts "Number of shares owned: #{shares}"
		puts "Purchase price: #{purchase_price}"
		puts "Amount owned: #{amount_owned}"
		puts "--"
	
	end

	sleep 3

	display_stocks
	
end	