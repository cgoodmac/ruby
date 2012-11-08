require 'pry'

load 'group.rb'

people = ['Adrian', 'Larry', 'Jasmine', 'Raymond', 'Chang', 'Chris', 'Derrick', 'Dustin', 'Aaron', 'Zahra', 'Avi', 'Gaurav', 'Audric', 'Jon', 'Tim', 'Marc', 'Thom']
groups = []
# group = 0

random_people = people.shuffle

puts "How many people to a group?"
number = gets.to_i

loops = random_people.length / number

(0..(loops-1)).each do |i|
	group = random_people.pop(number)
	groups << group
	puts "Group #{i+1}: #{group}"
end

if random_people.length == 1
	groups[-1] << random_people.join()
end

binding.pry




# random_people.each do |i|
# 	g = Group.new(i)
# 	g.group = random_people.pop(number)
# 	groups << g.group
# end



	













# #randomize the array
# random_people = people.shuffle

# puts "How many people to a group?"
# number = gets.to_i

# random_people.each do |i|
# 	person = random_people.slice!(0)
# 	new_people << person
# 	random_people
# end


# Create array
# randomize

# for every (0.. input)
# slice
# pop out the first (input) people in a new array
# delete those people from the original array
# repeat

# display

