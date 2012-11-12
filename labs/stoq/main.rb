require 'pry'
require 'test/unit'
require 'yahoofinance'

load 'user.rb'
load 'display_stocks.rb' # I kept these methods in separate files just because this file was getting long and ugly looking. 
load 'purchase_stock.rb' # I kept these methods in separate files just because this file was getting long and ugly looking.

users = {}
selected_user = nil
@logged_in_user = nil
@quote_type = YahooFinance::StandardQuote 


puts "(c)reate user or (l)ogin or (q)uit?"
response = gets.chomp

while response != 'q' # this big while loop is the create/login/quit loop. Once the user actually logs in, the user activates the purchase stock loop in purchase_stock.rb

	if response == 'c'

		puts "What is your username?"
		name = gets.chomp

		puts "What do you want for a password?"
		pw = gets.chomp

		puts "How much cash do you have?"
		cash = gets.chomp.to_i

		u1 = User.new(name,pw,cash)
		users[u1.name] = u1

		puts "User created!"
		puts "Here are the users: #{users.keys}"

	elsif response == 'l'	

		puts "Here are the users: #{users.keys}"
		puts "Which user do you want to login as?"
		name = gets.chomp

		while selected_user == nil # running this as a loop keeps asking the user which one they want to login as if their choice doesn't correspond to an option

			if users.has_key?(name) #if the name inputted actually matches one of the existing users i the array "users"
				selected_user = users[name]
			else 
				puts "User not found!"

				puts "Here are the users: #{users.keys}"
				puts "Which user do you want to login as?"
				name = gets.chomp
			end

		end

		puts "What is the password for #{selected_user}?"
		pw = gets.chomp

		while @logged_in_user == nil

			if pw == selected_user.pw
				@logged_in_user = selected_user
				puts `clear`
				purchase_stock
			else
				puts "Incorrect password!"

				puts "What is the password for #{selected_user}?"
				pw = gets.chomp
			end

		end	
	
	end

	puts "(c)reate user or (l)ogin or (q)uit?"
	response = gets.chomp

end

