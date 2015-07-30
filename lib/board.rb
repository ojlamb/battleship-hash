require_relative "numeric"

require 'pry'

class Board

	DEFAULT_GRID_SIZE = 10

	attr_reader :ships, :grid_size, :hits, :misses

	def initialize(grid_size=DEFAULT_GRID_SIZE)
		@ships = {}
		@grid_size = grid_size
		@hits = []
		@misses = []
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
			location.each { |co| @ships[co] = ship }
		else
			if (@ships.keys & location).empty?
				location.each { |co| @ships[co] = ship }
			else
				fail "Ships cannot overlap"
			end
			@ships
		end
	end

	def collect_hits(position)
		@hits << position
	end

	def collect_misses(position)
		@misses << position
	end

	def checks(position)
		if ships.keys.include?(position)
			ships[position].got_hits
		end
	end

	# def sunk?
	# 	if (@ships[self.class.name] & hits).length == DEFAULT_SIZE
	# 		true
	# 	else
	# 		false
	# 	end
	# end


end