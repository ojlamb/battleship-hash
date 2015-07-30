
require 'submarine'

describe Submarine do
  #let(:board) { double :board, collect_hits: "Hit"}
  #let(:player) { Player.new(board) }
  let(:ship) { double :ship }

	it 'expect Submarine to have a default size' do
	  expect(subject.size).to eq(Submarine::DEFAULT_SIZE)
	end

  context "has it sunk" do
    xit "responds to sunk" do
      expect(subject).to respond_to(:sunk?)
    end

    xit "should return true if it has sunk" do
      # allow(board).to receive(:ships) { {"A2" => ship} }
      allow(player).to receive(:fire)
      allow(board).to receive(:collect_hits)
      # board.collect_hits("A2")
      # board.checks("A2")
      # allow(player).to receive(:fire)
      # allow(board).to receive(:collect_hits)
      allow(board).to receive(:checks)
      # subject.hits = subject.size
      expect(subject.sunk?).to eq(true)
    end

    xit "should return false if it has not sunk" do
      # subject.hits = 2
      # expect(subject.sunk?).to eq(false)
    end
  end

end