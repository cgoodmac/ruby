require 'test/unit'
# adds test/unit gem

# TDD = Test Driven Development
# get the test to fail, then write code, get the test to pass

# WRITE ONE TEST PER FUNCTION
# SETUP EACH, ASSERT IT
# BE AWARE: TEST DOESN'T RUN TESTS IN ORDER, WORKS IN PARALLEL
# LEAVE THE TESTS IN YOUR CODE (SEPARATE DIRECTORY)

class Mathematics
	def self.factorial(x)
		(1..5).inject(&:*)
	end
end


#myTest inherits functions of TestCase, which HAPPENS to be inside module Unit inside module Test
class MyTest < Test::Unit::TestCase #identifies class TestCase, which is inside of module Unit, inside module Test

	def test_simple
		assert_equal(1, 1) # compares the two items
		# list of things you can assert in a test: http://www.ruby-doc.org/stdlib-1.9.3/libdoc/test/unit/rdoc/Test/Unit/Assertions.html
	end

	def test_addition #syntax is always test_something
		x = 3 + 5
		assert_equal(8, x, "should be an 8!")
		# the first item is the expected, second is the actual, last is option msg
	end

	def test_factorial
		x = Mathematics.factorial(5)
		assert_equal(120, x, "your code needs fixing")
	end
end	

#every dot in output of test is a passing test

# module Test
# 	module Unit
# 		class TestCase
# 		end
# 	end
# end

#LAB - STOQ.RB

1. Create a user
- What do you want the name to be?
- What do you want the password to be?
- How much cash do they have?

2. Login as that user
- "Joe", "Sally", "Jim"?
-Sally: password?
-After logged in, you get to buy stock
-user has stock

3. Purchase stock
-put in symbol (AAPL)
-How many shares do you want to buy
-deduct amount from cash
-if not enough money, doesn't run, can't buy
-step 3 is a loop. you can buy as much stock as you want

4. Show stoq dashboard
Example: Google currpx = 423.15 change from last quote = -0.13 average px = 225 number of shares = 100 total amount of stock $ = 24516, Apple, Amazon
dashboard runs in a LOOP
-use SLEEP command (example: sleep 3 makes you wait 3 seconds then refreshes and does it again)
-this is an infinite loop, only way is "ctrl +c"
-use unit testing

Someone write classes, someone write TestClasses - SEPARATE FILE, LOAD 

[1] pry(main)> require 'yahoofinance'
=> true
[2] pry(main)> quote_type = YahooFinance::StandardQuote
=> YahooFinance::StandardQuote
[3] pry(main)> quote_symbols = "aapl"
=> "aapl"
[4] pry(main)> YahooFinance::get_quotes( quote_type, quote_symbols )
=> {"AAPL"=>
  YahooFinance::StandardQuote
symbol = AAPL
name = Apple Inc.
lastTrade = 554.3699
date = 11/9/2012
time = 1:04pm
change = +16.6199 - +3.09%
changePoints = 16.6199
changePercent = 3.09
previousClose = 537.75
open = 540.01
dayHigh = 554.88
dayLow = 533.72
volume = 21832040
dayRange = 533.72 - 554.88
lastTradeWithTime = 1:04pm - <b>554.3699</b>
tickerTrend = &nbsp;-+==++&nbsp;
averageDailyVolume = 17033000
bid = 554.19
ask = 554.37
}

[5] pry(main)> a = YahooFinance::get_quotes( quote_type, quote_symbols )
=> {"AAPL"=>
  YahooFinance::StandardQuote
symbol = AAPL
name = Apple Inc.
lastTrade = 554.203
date = 11/9/2012
time = 1:04pm
change = +16.453 - +3.06%
changePoints = 16.453
changePercent = 3.06
previousClose = 537.75
open = 540.01
dayHigh = 554.88
dayLow = 533.72
volume = 21838448
dayRange = 533.72 - 554.88
lastTradeWithTime = 1:04pm - <b>554.203</b>
tickerTrend = &nbsp;+=+=++&nbsp;
averageDailyVolume = 17033000
bid = 554.05
ask = 554.14
}

[6] pry(main)> a.class
=> Hash
[7] pry(main)> a.keys
=> ["AAPL"]
[8] pry(main)> a["AAPL"]
=> YahooFinance::StandardQuote
symbol = AAPL
name = Apple Inc.
lastTrade = 554.203
date = 11/9/2012
time = 1:04pm
change = +16.453 - +3.06%
changePoints = 16.453
changePercent = 3.06
previousClose = 537.75
open = 540.01
dayHigh = 554.88
dayLow = 533.72
volume = 21838448
dayRange = 533.72 - 554.88
lastTradeWithTime = 1:04pm - <b>554.203</b>
tickerTrend = &nbsp;+=+=++&nbsp;
averageDailyVolume = 17033000
bid = 554.05
ask = 554.14


[9] pry(main)> a["AAPL"].lastTrade
=> 554.203
[10] pry(main)> a["AAPL"].lastTrade
=> 554.203
[11] pry(main)> a["AAPL"].lastTrade
=> 554.203
[12] pry(main)> a["AAPL"].lastTrade
=> 554.203
[13] pry(main)> YahooFinance::get_quotes( quote_type, quote_symbols )["AAPL"].lastTrade
=> 553.6
[14] pry(main)> YahooFinance::get_quotes( quote_type, quote_symbols )["AAPL"].lastTrade
=> 553.6	

# Twitter stuff at the end of class
Twitter.update('hi')
Twitter.search('#ruby -rt', :count => 20).results.map{|r| r.text}
Twitter.search('@GA', :count => 20).results.map{|r| r.text}	