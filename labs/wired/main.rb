require 'pry'

load 'point.rb'
load 'wire.rb'

points = []
wire = []

(0..9).each do |i|
	
	x = Random.rand(1000)
	y = Random.rand(1000)

	p1 = Point.new(x,y)
	points << p1
end	

puts "Generated coordinates: #{points}"

(0..8).each do |i|
	x1 = points[i].array[0]
	y1 = points[i].array[1]
	x2 = points[i+1].array[0]
	y2 = points[i+1].array[1]
	puts "Set #{i+1}: X1 = #{x1}, Y1 = #{y1}, X2 = #{x2}, Y2 = #{y2}"

	distance = Math.sqrt((x1-x2)**2 + (y1 - y2)**2)
	wire << distance
end

total_distance = wire.inject(&:+)

puts "Total distance is: #{total_distance}"
