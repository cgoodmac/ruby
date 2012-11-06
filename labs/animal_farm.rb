require 'pry'

#create a person class
class Person

	attr_accessor :name, :age, :gender

	def initialize(n, a, g)
		@name = n
		@age = a
		@gender = g
	end	

	def to_s
		"#{name} is a #{gender} aged #{age}"
	end

end	

#create a people array to push created people
people = []

puts "Create a (p)erson or (q)uit?"
input = gets.chomp

while input != 'q'

	if input == 'p'

		puts "What's the name?"
		name = gets.chomp

		puts "How old?"
		age = gets.chomp.to_i

		puts "Male or female?"
		gender = gets.chomp

		p1 = Person.new(name, age, gender)
		people << p1

		puts people

		puts "Create a (p)erson or (q)uit?"
		input = gets.chomp

	else

		puts "Create a (p)erson or (q)uit?"
		input = gets.chomp
	
	end

end

#reports the final list at the end
puts "You quit. Here is the final list of people:"
puts people
