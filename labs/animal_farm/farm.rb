class Farm
	attr_accessor :name, :animals, :people

	def initialize(n)
		@name = n
		@animals = []
		@people = []
	end

	def to_s
		# Formats the output at the end of the program
 		"#{name} is a farm"
	end

end