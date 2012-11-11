class User

	attr_accessor :name, :pw, :cash, :stocks

	def initialize(name, pw, cash)

		@name = name
		@pw = pw
		@cash = cash
		@stocks = [] # creates an empty array of stocks when each user object is created

	end

	def to_s
		"#{name}"
	end
end