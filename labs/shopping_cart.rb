require 'pry'

items = {:shoes => 80.33, :shirts => 25.67, :socks => 7.99} 

puts "What do you want to buy? (shoes, shirts, socks, checkout)"
what = gets.chomp

puts "How many?"
how_many = gets.chomp

price = items[what]
cost = price * how_many

puts "#{what} times #{how_many} equals #{cost}"