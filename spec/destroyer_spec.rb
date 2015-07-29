
require 'destroyer'

describe Destroyer do

	it 'expect Destroyer to have a default size' do
	  expect(subject.size).to eq(Destroyer::DEFAULT_SIZE)
	end

	it 'should have a default direction of horizontal' do
		expect(subject.direction).to eq(Destroyer::DEFAULT_DIRECTION)
	end

	
	context 'change direction of boat' do

		it 'should be able to change direction' do
			expect(subject).to respond_to(:change_direction)
		end

		it 'becomes vertical when initially horizontal' do
			subject.direction = :horizontal
			expect(subject.change_direction).to eq(:vertical)
		end

		it 'becomes vertical when initially horizontal' do
			subject.direction = :vertical
			expect(subject.change_direction).to eq(:horizontal)
		end

	end



end