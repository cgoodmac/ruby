class Person
	attr_accessor :name, :age, :gender

	def initialize(n,a,g)
		# Initialize the Person's variables.  In this case
		# "Name, age and gender"
		@name = n
		@age = a
		@gender = g
	end

	def to_s
		# Formats the output at the end of the program
 		"#{name} is #{gender} and #{age} years old"
	end
end
