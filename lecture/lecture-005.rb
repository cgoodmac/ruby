# PLAYING WITH ARRAYS

# [1] pry(main)> numbers = (1..10).to_a
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# [2] pry(main)> numbers
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# [3] pry(main)> numbers.select{|n| n.even?}
# => [2, 4, 6, 8, 10]
# [4] pry(main)> numbers.select {|n| !n.even?}
# => [1, 3, 5, 7, 9]
# [5] pry(main)> numbers.map {|q| q**2}
# => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]


# [7] pry(main)> numbers2 = numbers.map {|q| q**3}
# => [1, 8, 27, 64, 125, 216, 343, 512, 729, 1000]

# [9] pry(main)> numbers.map {|n| "hello"}
# => ["hello",
#  "hello",
#  "hello",
#  "hello",
#  "hello",
#  "hello",
#  "hello",
#  "hello",
#  "hello",
#  "hello"]
# [10] pry(main)> numbers.map {|n| "hello#{n}".upcase}
# => ["HELLO1",
#  "HELLO2",
#  "HELLO3",
#  "HELLO4",
#  "HELLO5",
#  "HELLO6",
#  "HELLO7",
#  "HELLO8",
#  "HELLO9",
#  "HELLO10"]
# [11] pry(main)> numbers.map {|n| "HELLO#{n}+1".downcase}
# => ["hello1+1",
#  "hello2+1",
#  "hello3+1",
#  "hello4+1",
#  "hello5+1",
#  "hello6+1",
#  "hello7+1",
#  "hello8+1",
#  "hello9+1",
#  "hello10+1"]
# [12] pry(main)> numbers.map {|n| "HELLO#{n+1}".downcase}
# => ["hello2",
#  "hello3",
#  "hello4",
#  "hello5",
#  "hello6",
#  "hello7",
#  "hello8",
#  "hello9",
#  "hello10",
#  "hello11"]
# [13] pry(main)> numbers.map {|n| "HELLO#{n+n}".downcase}
# => ["hello2",
#  "hello4",
#  "hello6",
#  "hello8",
#  "hello10",
#  "hello12",
#  "hello14",
#  "hello16",
#  "hello18",
#  "hello20"]
# [14] pry(main)> numbers.map{|n| n**2}.select{|n| n > 50}
# => [64, 81, 100]
# [15] pry(main)> numbers.map{|n| n**2}
# => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
# [16] pry(main)> numbers.map{|n| n**2}.select{|n| n > 50}
# => [64, 81, 100]
# [17] pry(main)> numbers.map{|n| n**2}.select{|n| n > 50}.inject(&:+)
# => 245
# 
# It's called INJECT, because it INJECTS plus signs into the array
# the plus sign is a SYMBOL
#

# MODULES

require 'pry'

module Work

	def fix_bugs
		"fixing bugs"
	end	

	def submit_code
		"submit code"
	end

end

module Play

	def ping_pong
		"ping pong"
	end	

	def goof_off
		"good off"
	end

end

class Employee

	def submit_time_card
		"submit time card"
	end

end	

class Dev < Employee

	include Work # includes the modules above
	include Play # includes the modules above

	def codes #this is an INSTANCE method, they are regular methods inside of a class
		puts "i am coding here"
	end

	def self.snack #this is a CLASS method, this is semantically the same as the method below it
		puts "i am snacking"
	end

	# def Dev.work #this is a CLASS method, this is semantically the same as the method above it
	# 	puts "i am working"
	# end
end

# Employee -> Work -> Play -> Dev -> d1


# CLASS METHODS

# when you use pry to show an object, then it only shows INSTANCE Methods
# you can only call INSTANCE methods on an object
# you call CLASS methods on the CLASS

class Calc

	attr_accessor :numbers

	def initialize(numbers)
		@numbers = numbers
	end

	def Calc.square(x) # CLASS method
		x * x
	end	

	def sum # INSTANCE method
		numbers.inject(&:+)
	end

end

# [2] pry(main)> c.sum
# => 6
# [3] pry(main)> Calc.square(2)
# => 4

# skip creating a new instance variable with the above! Just do the damn thing!
# Don't create an object just to sum something up

# Run CLASS methods when you don't need an INSTANCE. Just takes the extra step out

# LABBUDDIES ONE

# input = How many people to a group?
# 3

# Randomly generated listed of matches of three people

# #output is array [p1, p2, p3]
# and another array [p4, p5, p6] and so on

# if not divisible, tack on another person on the end

# Each p is the name of all the different people 

# [1] pry(main)> puts "1\n2"
# 1
# 2
# => nil
# [2] pry(main)> puts "1\n2\n3\n4"
# 1
# 2
# 3
# 4
# => nil
# [3] pry(main)> puts "1\n2\n3\n4\t"
# 1
# 2
# 3
# 4	
# => nil
# [4] pry(main)> puts "1\n2\n3\n4\t1"
# 1
# 2
# 3
# 4	1
# \t = TAB
# \n = NEXT LINE

#use puts `clear` to clear page after each move

# [1] pry(main)> Random.rand(1000)
# => 0
# [2] pry(main)> Random.rand(1000)
# => 285


# Create 10 points using random number generator
# d1 = distance between first two points
# d2 = distance between point 2 to point 3
# add all 10 distances together

# Point class is each point
# Wire is the container class that contains the points












binding.pry
