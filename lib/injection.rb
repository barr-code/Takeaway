class Array

	def injection(args = nil)
		arr = self.dup
		args == nil ? accumulator = arr.shift : accumulator = args
		arr.each {|element| accumulator = yield(accumulator, element)}
		
		accumulator
	end
end