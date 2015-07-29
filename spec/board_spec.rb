
require 'board'

describe Board do

	context "placing the ship on the board" do
		it "responds to place with 3 arguments" do
			expect(subject).to respond_to(:place_ship).with(3).arguments
		end

		it "should begin with a ships" do
			
		end
	end


end