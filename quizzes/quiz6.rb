require 'pry'

numbers = (250..750).to_a
numbers_odd = numbers.select{|n| n.odd?}
numbers_sum = numbers.select{|n| n.odd?}.inject(&:+)

puts "Here are the numbers: #{numbers.join(', ')}"
puts "Here are the odd numbers: #{numbers_odd.join(', ')}"
puts "Here is the sum of the odd numbers: #{numbers_sum}"

binding.pry