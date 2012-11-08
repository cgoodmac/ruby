class Plate
	attr_accessor :animal_type

	def initialize(animal_type, calories, servings, preptime)
		@animal_type = animal_type
		@calories = calories
		@servings = servings
		@preptime = preptime
	end

	def to_s
		"#{animal_type}"	
	end

end