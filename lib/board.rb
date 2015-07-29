require_relative "patrol_boat"
require_relative "numeric"
require 'pry'

class Board

	DEFAULT_GRID_SIZE = 10

	attr_reader :ships, :grid_size

	def initialize(grid_size=DEFAULT_GRID_SIZE)
		@ships = {}
		@grid_size = grid_size
	end

	def place_ship(ship, direction, coordinates)
		array = coordinates.scan(/\d+|\D+/)
		number = array[1].to_i
		letter = array[0].upcase
		fail "Choose a number bigger than zero" if number < 1
		location = [coordinates.upcase]
		(ship.size - 1).times do
			if direction == :horizontal
				number += 1
				fail "Can't place ship off board" if number > @grid_size
				location << "#{letter}#{number}"
			elsif direction == :vertical
				letter = letter.next
				fail "Can't place ship off board" if letter.to_number > @grid_size
				location << "#{letter}#{number}"
			else
				fail "Choose a proper direction" if direction != (:vertical || :horizontal)
			end
		end

		if @ships == {}
			@ships.merge!(ship.class.name => location)
		else
			@ships.values.each do |coords|
				if (coords & location) == []
					@ships.merge!(ship.class.name => location)
				else
					fail "Ships cannot overlap"
				end
			end
			@ships
		end
	end


end