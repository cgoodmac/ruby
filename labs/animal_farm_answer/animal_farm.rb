require 'pry'

load 'person.rb'
load 'animal.rb'
load 'farm.rb'

puts "(f)arm, (p)erson, (a)nimal, or (q)uit?"
response = gets.chomp

farms = {}

while response != 'q'
	case response
	when 'f'
		puts "Name?"
		name = gets.chomp
		farm = Farm.new(name)
		farms[name] = farm # using a string as a key and not a symbol. Name is the key and farm is the object that it represents
	when 'p'
		puts "Name?"
		name = gets.chomp
		puts "Age?"
		age = gets.chomp
		puts "Gender?"
		gender = gets.chomp
		person = Person.new(name,age,gender)

		puts "What farm does this person belong to: #{farms.keys.join(',')}?"
		farm_name = gets.chomp
		farms[farm_name].people << person

		# OLD SCHOOL
		# farm_found = nil

		# farms.each do |farm|
		# 	if farm.name == farm_name
		# 		farm_found = farm
		# 	end
		# end		

		# farm_found.people << person

	when 'a'
		puts "Name?"
		name = gets.chomp
		puts "Species?"
		species = gets.chomp
		puts "Gender?"
		gender = gets.chomp
		animal = Animal.new(name,species,gender)

		puts "What farm does this person belong to: #{farms.keys.join(',')}?"
		farm_name = gets.chomp
		farms[farm_name].animals << animal


		# OLD SCHOOL
		# farm_found = nil

		# farms.each do |farm|
		# 	if farm.name == farm_name
		# 		farm_found = farm
		# 	end
		# end

		# farm_found.animals << animal
	end	

	puts "(f)arm, (p)erson, (a)nimal, or (q)uit?"
	response = gets.chomp

end

binding.pry