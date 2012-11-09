class User

	attr_accessor :name, :pw, :cash, :stocks

	def initialize(name, pw, cash)

		@name = name
		@pw = pw
		@cash = cash
		@stocks = []

	end

	def to_s
		"#{name}"
	end
end