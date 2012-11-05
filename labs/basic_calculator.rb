puts "Do you want to (a)dd, (s)ubtract, or (q)uit?"
command = gets.chomp #this fixed the error happening

while command !=q 
	if command == "a"
		puts "First number?"
		n1 = gets.to_i #turns input into an integer
		puts "Second number?"
		n2 = gets.to_i #turns input into an integer
		n3 = n1 + n2
		puts "#{n1} plus #{n2} equals #{n3}"
	elsif command == "s"
		puts "First number?"
		n1 = gets.to_i #turns input into an integer
		puts "Second number?"
		n2 = gets.to_i #turns input into an integer
		n3 = n1 - n2
		puts "#{n1} minus #{n2} equals #{n3}"
	else
		puts "You quit"
	end	
end

	

