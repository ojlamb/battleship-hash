require_relative 'board'

class Submarine

  DEFAULT_SIZE = 3

  attr_reader :size

  def initialize
    @size = DEFAULT_SIZE
  end



	# def sunk?
	# 	if (@ships[self.class.name] & hits).length == DEFAULT_SIZE
	# 		true
	# 	else
	# 		false
	# 	end
	# end
end