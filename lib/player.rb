require_relative 'board'

class Player

  attr_reader :board

  def initialize(board)
    @board = board
  end

  def fire(position)
    board.checks(position)
  end

  def won?
    board.all_ships_sunk?
  end

end

