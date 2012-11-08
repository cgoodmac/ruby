require 'pry'

load 'food.rb'
load 'protein.rb'
load 'carb.rb'

dinner = []

puts "Create a (p)rotein, (c)arb, or (q)uit?"
prompt = gets.chomp

while prompt != 'q'

	case prompt
	when 'p'
		puts "What kind of protein?"
		animal_type = gets.chomp
	when 'c'
		puts "What kind of carb?"
		grain_type = gets.chomp
	end 

	puts "Calories?"
	calories = gets.chomp.to_i

	puts "Servings?"
	servings = gets.chomp.to_i

	puts "Prep time?"
	preptime = gets.chomp.to_i

	case prompt
	when 'p'
		p1 = Protein.new(animal_type, calories, servings, preptime)
		dinner << p1
	when 'c'
		c1 = Carb.new(grain_type, calories, servings, preptime)
		dinner << c1
	end

puts "Create a (p)rotein, (c)arb, or (q)uit?"
prompt = gets.chomp

end

# Calculate total calories and preptime
total_calories = 0
total_preptime = 0

dinner.each do |i|
	total_calories = total_calories + (i.calories * i.servings)
end

dinner.each do |i|
	total_preptime = total_preptime + i.preptime
end

puts "Dinner items: #{dinner.join(', ')}"
puts "Total calories: #{total_calories}"
puts "Total prep time in mins: #{total_preptime}"
