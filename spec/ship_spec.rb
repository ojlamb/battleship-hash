require 'ship'

describe Ship do
  let(:board) { double('board', :ships => {'D4' => Ship.boat} )}
  let(:player) { double('player', :fire => '')}


  it 'it has 0 hits when created' do
    ship = Ship.boat
    expect(ship.hits).to eq 0
  end

  # describe '#hit?' do
  #   it 'is hit' do
  #     ship = Ship.boat
  #     expect(ship.hits).to eq 1
  #   end
  #   it 'is not hit' do
  #     ship = Ship.boat
  #     expect(ship.hits).to eq 0
  #   end

  describe '#get_hit' do
    it 'increases  hits' do
      ship = Ship.boat
      hits_before = ship.hits
      expect(ship.get_hit).to eq hits_before + 1
    end
    describe '#sunk?' do
      it 'determine that ship has sunk' do
        ship_boat = Ship.boat
        ship_boat.size.times {ship_boat.get_hit}
        expect(ship_boat.sunk?).to eq true
      end
    end
  end

  describe '#size' do
    it 'determine <boat> length' do
      expect((Ship.boat).size).to eq 2
    end

    it 'determine <submarine> length' do
      expect((Ship.submarine).size).to eq 3
    end

    it 'determine <destroyer> length' do
      expect((Ship.destroyer).size).to eq 3
    end

    it 'determine <warrior> length' do
      expect((Ship.warrior).size).to eq 4
    end

    it 'determine <aircraft_carrier> length' do
      expect((Ship.aircraft_carrier).size).to eq 5
    end
  end
end