
require 'submarine'

describe Submarine do

	it 'expect Submarine to have a default size' do
	  expect(subject.size).to eq(Submarine::DEFAULT_SIZE)
	end

end