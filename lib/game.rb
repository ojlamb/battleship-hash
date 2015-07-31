require_relative 'player'

class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    puts "Battleships!"
  end

  def start_game
    puts "Player 1:"
    player_1_input = gets.chomp
    player2.fire(player_1_input)
    end_game if player2.board.all_ships_sunk?
    second_player
  end

  def second_player
    puts "Player 2:"
    player_2_input = gets.chomp
    player1.fire(player_2_input)
    end_game if player1.board.all_ships_sunk?
    start_game
  end

  def end_game
    return "You won!"
  end
end