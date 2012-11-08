# key -> name |  value -> farm obj
# "bob"			"bob's farm"

# quiz3

# create student class
# name, DOB, gender, gpa, major

# print out students array

# quiz 4

# prompt user to enter a (n)umber or (q)uit

# have a numbers = [] array

# add "n" to numbers

# [3,5,7,9] => theyre all NUMBERS .to_i

# Create another array. Same thing, except

# [9,25,49,81]

# New array is squares of all the other arrays

# create a square function, where you pass in number x and output you

# loop through the array

# use MAP. Takes an array, creates a new array from it


# INHERITANCE

# you can inherit functions from parent class

require 'pry'

# you can create employees if you want, but it makes more sense to create specialized classes

# outermost edges of the tree are "leaves"

# Use j1.class.ancestors to see the ancestors of the class of the object

class Employee
	attr_accessor :name, :employee_id
end

class Dev < Employee
	attr_accessor :language

	def to_s
		"#{name} loves #{language}"
	end
end

class JuniorDev < Dev

	def fix_bugs
		puts "#{name} with an employee ID of #{employee_id} loves #{language} and is fixing bugs"
	end

end

class SeniorDev < Dev

	def delegate_bug_fixing
		puts "#{name} with an employee ID of #{employee_id} loves #{language} and is telling junior devs to fix bugs"
	end

end

class QualityAssurance < Employee

	def spot_bugs
		puts "#{name} with an employee ID of #{employee_id} is spotting bugs"
	end
end

binding.pry

#LAB INHERITANCE
# two classes, Protein and Carb

# create an array dinner = []

# holds protein and carb objects

# methods

# initialize
# calories per serving 200
# number of servings 2 (400 calories)
# grain_type - > white, whole
# animal_type - > beef, pork
# preptime -> 50 (min)
# to_s

# protein1 = Protein.new(calories,servings,animal_type,preptime)
# carb1 = Carb.new('whole',100,2,80 min)

# (1) Say total calories in meal
# (2) What is total preptime

# Additions

# Change array of dinner to plate
# Create a dinner hash - dinner is a week of food. Keys are days of the week (strings)
create array of individuals dinner
