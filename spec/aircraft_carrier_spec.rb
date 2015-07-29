
require 'aircraft_carrier'

describe AircraftCarrier do

	it 'expect Aircraft Carrier to have a default size' do
	  expect(subject.size).to eq(AircraftCarrier::DEFAULT_SIZE)
	end


end