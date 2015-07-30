require_relative 'board'

class Player

  attr_reader :board

  def initialize(board)
    @board = board
  end

  def fire(position)
    if @board.ships.keys.include?(position)
      board.collect_hits(position) #untested
      board.checks(position) #untested
      "Hit"
    else
      board.collect_misses(position)
      "Miss"
    end
  end



  # private
  # def gets_hit?
  #   @board.ships.values.flatten.include?(position)
  # end

  # def missed
  #   @board.ships.values.flatten.include?(position)
  # end

end