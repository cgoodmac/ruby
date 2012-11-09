require 'pry'

class Mathematics

	attr_accessor :x, :array
 
	def Mathematics.factorial(x)

		@array = []

		@x = x

		(1..(@x)).each do |i|
			@array << i
		end	

		addition = @array.inject(&:+)
	end	

end

binding.pry
