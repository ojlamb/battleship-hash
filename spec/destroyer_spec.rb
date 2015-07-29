
require 'destroyer'

describe Destroyer do

	it 'expect Destroyer to have a default size' do
	  expect(subject.size).to eq(Destroyer::DEFAULT_SIZE)
	end



end