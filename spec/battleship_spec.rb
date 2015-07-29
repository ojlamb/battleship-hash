
require 'battleship'

describe Battleship do

	it 'expect Battleship to have a default size' do
	  expect(subject.size).to eq(Battleship::DEFAULT_SIZE)
	end


end