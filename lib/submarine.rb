require_relative 'board'

class Submarine

  DEFAULT_SIZE = 3

  attr_reader :size, :hits

  def initialize
    @size = DEFAULT_SIZE
    @hits = 0
  end

  def hit
    @hits += 1
    sunk?
  end

	def sunk?
	  @hits == DEFAULT_SIZE #? true : false
	end

end