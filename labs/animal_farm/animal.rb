class Animal
	attr_accessor :name, :species, :gender

	def initialize(n,s,g)
		@name = n
		@species = s
		@gender = g
	end

	def to_s
		# Formats the output at the end of the program
 		"#{name} is a #{species} and is #{gender}"
	end

end