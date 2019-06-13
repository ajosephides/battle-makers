require 'game'

describe Game do
  let(:player1_double) {double :player1, name: 'AJ'}
  let(:player2_double) {double :player2, name: 'Kir'}
  let(:game) {Game.new(player1_double, player2_double)}

  describe '#initialize' do
    it 'is initialised with 2 players' do
      expect(game.player1.name).to eq('AJ')
      expect(game.player2.name).to eq('Kir')
    end
  end
  
  describe '#attack' do
    it 'accepts a player to attack' do
      allow(player1_double).to receive(:receive_damage).and_return('Ouch')
      expect(game.attack(player1_double)).to eq('Ouch')
    end
  end
end