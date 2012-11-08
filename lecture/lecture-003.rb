# lecture-003.rb

# #mta.keys
# #[:n, :l, :s]

# mta.keys.join(', ') => n, l, s

# Object-oriented programming

# How you make an object in ruby

# class Person

# end

# From that, you can create objects

# p1, p2, p3, p4

# p1 = Person.new

# all of which come from "Person" (which is a people factory)

require 'pry'

class Person

	#this creates functions that you can get and set automatically!
	attr_accessor :name, :gender, :dogs

	#when you call "new", "intialize" gets called automatically!!!
	def initialize(n, g) #spell it right!
		@name = n
		@gender = g
		@dogs = []
	end

	#makes your to_s whatever you want it to look like
	#this gets called implicitly when you call the object
	def to_s
		"#{name} is a #{gender}"
	end

	# #created a method inside this class
	# def say_hello
	# 	"hello world"
	# end

	# def gender(g)
	# 	"you are #{g}"
	# end

	# def set_name(n)
	# 	#putting the @ in front keeps the var in memory, it's called an instance variable (it's like global)
	# 	@first_name = n
	# end

	# def get_name
	# 	@first_name
	# end

	# def set_gender(n)
	# 	#putting the @ in front keeps the var in memory, it's called an instance variable (it's like global)
	# 	@gender = n
	# end

	# def get_gender
	# 	@gender
	# end

end

class Dog
	attr_accessor :name

	def initialize(n)
		@name = n
	end

	def to_s
		"#{name} is a dog! he likes to go woof!"
	end

end

# you can give p1 etc. dogs like this: p1.dogs << d1 << d2 << d3
# you can add p1 etc. to an array of "people"
# you can call a dog in the people array: people[0].dogs[1]
# people[0].dogs[2].name

# you can call this method in this object by creating p1 = Person.new and then calling it by typing p1.say_hello

# you can put objects in an array and call out what you need from them, like people[1].gender

# you can also loop through each one
# people.each {|p| puts "cool : #{p}"}


binding.pry

# animal_farm.rb

# create a person: name, age, gender

# create a (p)erson or (q)uit LOOP
# Name?
# Age? 
# Gender?

# store these person objects into people array

# when exit, display all the people in the array, use to_s method

# STRING MANIPULATION

# Map takes an array and makes a new array out of it. I
# # a.map {|s| s.upcase} 

# # LAB

# create class crawler

# in initialize method, pass url you want to crawl

# c1 = Crawler.new("http://cnn.com")
# c1.parse 

# def parse
# 	@s = HTTParty.get(url)
# end

# c1.words = 2362 array.count
# split, counta
# c1.url = cnn.com which url?
# c1.vowels = 300 how many vowels on this page
# c1.consonants = 500 number of letters in total - number of vowels try not to count special characters
# c1.obama = number of times obama used on site
# c1.romney = number of times romney used on site
# c1.histogram = {} a = 400, the = 300, hello = 12, obama = 300, romney = 1000 => for each word on page, show how many times word is used, 
# sort from high to low

# use ruby enumberable
# use hashes => the histogram is a hash

