require 'game'

describe Game do
  describe '#attack' do
  let(:player) {double :player}


    it 'accepts a player to attack' do
      allow(player).to receive(:receive_damage).and_return('Ouch')
      expect(subject.attack(player)).to eq('Ouch')
    end
  end
end