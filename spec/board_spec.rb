
require 'board'

describe Board do
  let(:ship) { double :ship }

	context "placing the ship on the board" do
		it "responds to place with 3 arguments" do
			expect(subject).to respond_to(:place_ship).with(3).arguments
		end

		it "result should be ships with coordinates" do
			coordinates = "A2"
      allow(ship).to receive(:size) { 2 }
      subject.place_ship(ship, :vertical, coordinates)
      expect(subject.ships.values).to include(["A2", "B2"])
		end

    it "should only have vertical or horizontal direction" do
      coordinates = "A2"
      allow(ship).to receive(:size) { 2 }
      expect{subject.place_ship(ship, :spaghetti, coordinates)}.to raise_error "Choose a proper direction"
    end

    it "should not let ships overlap" do
      allow(ship).to receive(:size) { 2 }
      subject.place_ship(ship, :vertical, "A2")
      expect{subject.place_ship(ship, :horizontal, "A2")}.to raise_error "Ships cannot overlap"
    end
	end

  context "constraints of the grid" do
    it "should have a default grid size" do
      expect(subject.grid_size).to eq Board::DEFAULT_GRID_SIZE
    end

    it "should not accept ships' coordinates number less than zero" do
      allow(ship).to receive(:size) { 2 }
      expect{subject.place_ship(ship, :vertical, "Z0")}.to raise_error "Choose a number bigger than zero"
    end

    it "should not accept ships that go off the board" do
      allow(ship).to receive(:size) { 2 }
      expect{subject.place_ship(ship, :vertical, "Z50")}.to raise_error "Can't place ship off board"
    end
  end

  context "hits and misses" do
  end







end