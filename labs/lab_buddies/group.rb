class Group
	attr_accessor :group_number

	def initialize
		@group_number = group_number
		@group = []
	end	

	def to_s
		"Group #{group_number}"
	end	


end