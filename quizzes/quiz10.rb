require 'pry'

puts "Number please?"
response = gets.chomp.to_i

begin # put fragile lines of code between begin and rescue
response.explode #explode is an undefined method, should cause an error
rescue

puts "The square of #{response} is #{response**2}"

end