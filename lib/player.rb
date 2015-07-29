require_relative 'board'

class Player

  attr_reader :board

  def initialize(board)
    @board = board
  end

  def fire(position)
    if @board.ships.values.flatten.include?(position)

      "You have hit a ship"
    else
      "You have missed"
    end
  end
end