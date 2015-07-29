
require 'submarine'

describe Submarine do
  let(:board) { double :board }
  let(:player) { Player.new(board) }

	it 'expect Submarine to have a default size' do
	  expect(subject.size).to eq(Submarine::DEFAULT_SIZE)
	end

  context "has it sunk" do
    it "responds to sunk" do
      expect(subject).to respond_to(:sunk?)
    end

    it "should return true if it has sunk" do
      subject.hits = 2
      binding.pry
      allow(player).to receive(:fire) { "Hit" }
      allow(board).to receive(:checks)
      subject.hits = subject.hits + 1
      expect(subject.sunk?).to eq(true)
    end
  end

end