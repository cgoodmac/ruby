require 'pry'

class Play

	#instance method
	def walk
		"I am walking"

	end 

	#class method
	def self.run
		"I am running"
	end
end

# creates a new object of the class Play
x = Play.new

# runs instance method "walk" on the new object
puts x.walk

# running the class method "run" doesn't require an object, it can be called on a class
puts Play.run