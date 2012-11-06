#INPUTS

puts "What is your name?"
name = gets.chomp

puts "First number?"
a = gets.chomp.to_i

puts "Second number?"
b = gets.chomp.to_i

puts "Third number?"
c = gets.chomp.to_i

#CALCS
d = (a + b) * c

e = a**b

f = Math.sqrt(a * b)

#PRINT RESULTS
puts "#{name}, your results: D = #{d}, E = #{e}, F = #{f}"



