class Animal
	attr_accessor :name, :species, :gender

	def initialize(n,s,g)
		@name = n
		@species = s
		@gender = g
	end

	def to_s
		"#{name} is a #{gender} #{species}"
	end

end