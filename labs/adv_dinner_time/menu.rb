class Menu
	attr_accessor :name, :menu

	def initialize(name)
		@menu = {}
		@name = name
	end

	def to_s
		"#{name}"	
	end

end