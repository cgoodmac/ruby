require 'pry'
require 'HTTParty'

class Crawler

	attr_accessor :url

	def initialize(url)
		@url = url
	end

	def to_s
		"This is a crawler for: #{url}"
	end

	def parse
		@p = HTTParty.get(url).split
	end

	def word_count
		parse.count
	end

	def character_count
		characters=0
		parse.each {|string| characters += string.count "a-z"}
		return characters
	end

	def vowel_count
		characters=0
		parse.each {|string| characters += string.count "aeiou"}
		return characters
	end

	def consonants_count
		consonants = character_count - vowel_count
	end

	def obama
		parse.count "Obama"
	end

	def romney
		parse.count "Romney"
	end

	def histogram
		histogram = {}
		(0..(parse.length-1)).each do |i|
			sym = parse[i].downcase.to_sym
			if histogram[sym]
				histogram[sym] += 1
			else
				histogram[sym] = 1
			end
		end

		histogram = histogram.sort_by {|key, value| value}
		return histogram
	end

end

puts "Analyze (s)ite or (q)uit?"
input = gets.chomp

while input != 'q'

	puts "Which url?"
	url = gets.chomp

	c1 = Crawler.new(url)

	c1.parse
	word_count = c1.word_count
	character_count = c1.character_count
	vowel_count = c1.vowel_count
	consonants_count = c1.consonants_count
	obama = c1.obama
	romney = c1.romney

	puts "Word count: #{word_count}"
	puts "Character count: #{character_count}"
	puts "Vowel count: #{vowel_count}"
	puts "Consonants count: #{consonants_count}"
	puts "Number of times Obama mentioned: #{obama}"
	puts "Number of times Romney mentioned: #{romney}"

	puts "Would you like to see the histogram? y/n"
	if gets.chomp=="y"
		histogram = c1.histogram()
		puts "Histogram"
		histogram.each {|key, value| puts "#{key}: #{value}"}
	end

	puts "Analyze (s)ite or (q)uit?"
	input = gets.chomp

end