require 'test/unit'
require 'pry'

class MyString

	def self.length(x)
		x.length
	end

end

class MyTest < Test::Unit::TestCase

	def test_string
		x = MyString.length('hello world')
		assert_equal(11, x, "error!")
		# the first item is the expected, second is the actual, last is option msg
	end
		
end