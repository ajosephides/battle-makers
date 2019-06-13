require 'player'

describe Player do
  
  let(:player) {Player.new('AJ')}
  
  describe '#get players name' do
    it "returns the player's name" do
      expect(player.name).to eq('AJ')
    end
  end
end