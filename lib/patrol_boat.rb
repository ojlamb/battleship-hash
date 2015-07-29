

class PatrolBoat

	DEFAULT_SIZE = 2
	DEFAULT_DIRECTION = :horizontal

	attr_reader :size, :direction

	def initialize
		@size = DEFAULT_SIZE
		@direction = DEFAULT_DIRECTION
	end

	def change_direction
		@direction == :horizontal ? self.direction = :vertical : self.direction = :horizontal
	end

end