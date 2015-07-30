require 'player'

describe Player do
  let (:board) { double :board }
  let (:player) { Player.new board }

  context "player fires" do
    it "should respond to fire and coordinates" do
      expect(player).to respond_to(:fire).with(1).argument
    end

    it "should return hit if player hits a ship" do
      ship = double :ship
      allow(board).to receive(:ships) { {"A2" => ship} }
      allow(board).to receive(:collect_hits)
      allow(board).to receive(:checks)
      expect(player.fire("A2")).to eq("Hit")
    end

    it "should return miss if player misses a ship" do
      ship = double :ship
      allow(board).to receive(:ships) { {"A2" => ship} }
      allow(board).to receive(:collect_misses)
      expect(player.fire("B2")).to eq("Miss")
    end

    # it "checks if board receives collect hits method" do
    #   subject.fire("A2")
    #   expect(board).to receive(:collect_hits).with("A2")
    # end

    # it "checks if board receives checks method" do
    #   subject.fire("A2")
    #   expect(board).to receive(:checks).with("A2")
    # end

  end
end