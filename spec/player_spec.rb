require 'player'

describe Player do
  let (:board) {double :board}
  let (:player) {Player.new board}

  context "player fires" do
    it "should respond to fire and coordinates" do
      expect(player).to respond_to(:fire).with(1).argument
    end

    it "should return hit if player hits a ship" do
      ship = double :ship
      allow(ship).to receive(:size) { 3 }
      allow(board).to receive(:hits) { ["A2"] }
      allow(board).to receive(:ships) { {"Ship" => ["A2"]} }
      allow(board).to receive(:collect_hits) 
      expect(player.fire("A2")).to eq("Hit")
    end

    it "should return miss if player misses a ship" do
      ship = double :ship
      allow(ship).to receive(:size) { 3 }
      allow(board).to receive(:misses) { ["A2"] }
      allow(board).to receive(:collect_misses)
      allow(board).to receive(:ships) { {"Ship" => "A2"} }
      expect(player.fire("B2")).to eq("Miss")
    end
  end
end