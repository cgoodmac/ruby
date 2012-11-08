class Carb < Food
	attr_accessor :grain_type

	def initialize(grain_type, calories, servings, preptime)
		@grain_type = grain_type
		@calories = calories
		@servings = servings
		@preptime = preptime
	end

	def to_s
		"#{grain_type}"	
	end

end