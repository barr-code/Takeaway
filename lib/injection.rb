class Array

	def injection(args = nil)
		args == nil ? accumulator = self.first : accumulator = args
		self.each {|accumulator, element| }
end