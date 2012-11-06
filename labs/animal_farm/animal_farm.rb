require 'pry'
load 'person.rb'
load 'animal.rb'
load 'farm.rb'

farms = []

#you need to create at least one farm to put things into
puts "Would you like to create a new farm? y/n"
prompt = gets.chomp


if prompt == "n"
	#the program quits if you don't want to create even one farm

elsif prompt == "y"

	puts "Name of the farm?"
	name = gets.chomp

	f = Farm.new(name)
	farms << f

	puts "Would you like to create a (p)erson, (a)nimal, (f)arm or (q)uit?"
	prompt = gets.chomp

	while prompt != "q"
		
		case prompt 
			when "p"

				puts "Name? "
				name = gets.chomp

				puts "Age?"
				age = gets.chomp

				puts "Gender?"
				gender = gets.chomp
				
				# New person object "p" is created and placed into an 
				# Array called "people"
				# I.e., people[0], people[1], people[2]
				p = Person.new(name, age, gender)
				# people << p

				puts "Which farm does this person belong to?"
				puts "Here are the farms: #{farms}"

				farm = gets.chomp

				(0..(farms.length-1)).each do |i|
					if farms[i].name == farm	
						farms[i].people << p 
					else
					end	
				end	

			when "a"
			
				puts "Name?"
				name = gets.chomp

				puts "Species?"
				species = gets.chomp

				puts "Gender?"
				gender = gets.chomp
				
				# New person object "p" is created and placed into an 
				# Array called "people"
				# I.e., people[0], people[1], people[2]
				a = Animal.new(name, species, gender)
				# animals << a

				puts "Which farm does this animal belong to?"
				puts "Here are the farms: #{farms}"

				farm = gets.chomp

				(0..(farms.length-1)).each do |i|
					if farms[i].name == farm	
						farms[i].animals << a 
					else
					end	
				end			

			when "f"

				puts "Name?"
				name = gets.chomp

				f = Farm.new(name)
				farms << f
		end	

		puts "Would you like to create a (p)erson, (a)nimal, (f)arm or (q)uit?"
		prompt = gets.chomp
		
	end

end

puts "Here are your farms:"
puts "--"
(0..(farms.length-1)).each do |i|
puts "In farm #{farms[i].name}:"
puts "You have people: #{farms[i].people.join(", ")}"
puts "You have animals: #{farms[i].animals.join(", ")}"
puts "--"
end	



