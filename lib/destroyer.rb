class Destroyer

  DEFAULT_SIZE = 3


  attr_reader :size


  def initialize
    @size = DEFAULT_SIZE
    # @hits = 0
  end

  # def change_direction
  #   @direction == :horizontal ? self.direction = :vertical : self.direction = :horizontal
  # end

end