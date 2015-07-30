
require 'destroyer'

describe Destroyer do

	it 'expect Destroyer to have a default size' do
	  expect(subject.size).to eq(Destroyer::DEFAULT_SIZE)
	end

  # context "has it sunk" do
  #   it "responds to sunk" do
  #     expect(subject).to respond_to(:sunk?)
  #   end
  # end

end