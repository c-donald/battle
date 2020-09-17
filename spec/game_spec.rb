require 'game'
require 'player'

describe Game do
  it 'responds to attack' do
    expect(subject).to respond_to(:attack)
  end

  describe '#attack' do
    it 'removes 10 HP from a player' do
      defender = Player.new("T")
      expect { subject.attack(defender) }.to change { defender.hp }.from(100).to(90)
    end
  end

end