require 'player'

describe Player do

  context "player fires" do
    it "should respond to fire and coordinates" do
      expect(subject).to respond_to(:fire).with(1).argument
    end

    it "should return hit if player hits a ship" do
      board = double :board
      allow(board).to receive(:ships) { {"Ship" => "A2"} }
      expect(subject.fire("A2")).to eq("You have hit a ship")
    end
  end



end