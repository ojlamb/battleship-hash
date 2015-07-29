require_relative "patrol_boat"

class Board

	attr_reader :ships

	def initialize
		@ships = {}
	end

	def place_ship(ship, direction, coordinates)
		array = coordinates.scan(/\d+|\D+/)
		number = array[1].to_i
		letter = array[0].upcase
		location = [coordinates.upcase]
		(ship.size - 1).times do
			if direction == :horizontal
				number += 1
				location << "#{letter}#{number}"
			elsif direction == :vertical
				letter = letter.next
				location << "#{letter}#{number}"
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