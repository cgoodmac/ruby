require 'pry'

puts "number or (q)uit"
response = gets.chomp

while response != 'q'

	puts "you typed in #{response}"

	# any line of code that might blow up (fragile), put it between begin and rescue
	# THIS IS HOW YOU GUARD AGAINST EXCEPTIONS
	begin
		# puts "entering begin" #this will repeat because it will show it running after the retry
		response.times { puts "x"}
	rescue
		puts "sorry your code it busted, please fix!" # you can also spit out code that says something isn't working in the program
		# response = response.to_i
		# retry # be careful with retry: if it doesn't work, it might cause an infinite loop if it keeps retrying something that doesn't work
	end

	if response == 'r'
		# THIS IS HOW YOU CREATE EXCEPTIONS
		raise "looks like an error!"
		# raise is a bomb, if you want to cause the program to blow up
		# this should cause an actual error
	end

	puts "number or (q)uit"
	response = gets.chomp

end