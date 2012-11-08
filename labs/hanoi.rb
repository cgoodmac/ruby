require 'pry'

disks_stack = []
pegs = []

puts "TOWERS OF HANOI"
puts "How many disks?"
disks = gets.chomp.to_i
puts `clear`

(0..(disks-1)).each do |i|
	disks_stack << (i+1)
end	

pegs << disks_stack
pegs << []
pegs << []

puts "#{pegs}"

puts "(p)lay or (q)uit?"
response = gets.chomp

while response !='q'

	puts "Pick your peg!"
	peg_start = gets.chomp.to_i-1
	disk_choice = pegs[peg_start][0] 
	puts "You picked this disk: #{disk_choice}"

	puts "Pick which peg you want to move the piece to!"
	peg_end = gets.chomp.to_i-1

	if pegs[peg_end][0] == nil
		pegs[peg_end].shift
		pegs[peg_end].unshift(disk_choice)
		pegs[peg_start].shift
	elsif disk_choice < pegs[peg_end][0]
		pegs[peg_end].unshift(disk_choice)
		pegs[peg_start].shift
	end	

	puts "#{pegs}"

	puts "(p)lay or (q)uit?"
	response = gets.chomp

end

binding.pry



