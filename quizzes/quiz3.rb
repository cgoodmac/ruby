require 'pry'

class Student
	
	attr_accessor :name, :dob, :gender, :gpa, :major

	def initialize(name,dob,gender,gpa,major)
		@name = name
		@dob = dob
		@gender = gender
		@gpa = gpa
		@major = major
	end

	def to_s
		"#{name} is a student with date of birth #{dob}, gender #{gender}, gpa #{gpa}, and major #{major}"
	end

end

puts "Create a (s)tudent or (q)uit?"
response = gets.chomp

students = []

while response != 'q'

	puts "Name?"
	name = gets.chomp
	puts "Date of birth?"
	dob = gets.chomp
	puts "Gender?"
	gender = gets.chomp
	puts "GPA?"
	gpa = gets.chomp
	puts "Major?"
	major = gets.chomp

	student = Student.new(name,dob,gender,gpa,major)
	students << student

	puts "You added: #{student}"
	puts "Create a (s)tudent or (q)uit?"
	response = gets.chomp

end

puts "Here are your students: #{students.join('; ')}"

